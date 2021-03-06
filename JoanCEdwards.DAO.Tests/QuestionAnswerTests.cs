﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NUnit.Framework;

namespace JoanCEdwards.DAO.Tests
{
    [TestFixture]
    public class QuestionAnswerTests : DataAccessTestBase
    {

        [Test]
        public void Question_HasOneAnswer_PerUser()
        {
            var actualQuestion = SaveDefaultQuestionAnswer();
            Assert.AreEqual(1, actualQuestion.QuestionAnswers.Count);
        }

        private Question SaveDefaultQuestionAnswer()
        {
            var exam = new Exam() { Instructions = new string('a', 3500), Title = "here is the title" };
            db.Exams.InsertOnSubmit(exam);
            db.SubmitChanges();

            var question = new Question() { QuestionCategory = "label", QuestionText = "here is the question text", QuestionType = "M" };
            db.Questions.InsertOnSubmit(question);
            db.SubmitChanges();

            var expectedProfile = new UserProfile() { EmailAddress = "email", FirstName = "name", LastName = "lname", GradeLevel = "5", UserType = 'S', Password = new string('p', 300) };
            db.UserProfiles.InsertOnSubmit(expectedProfile);
            db.SubmitChanges();

            exam.ExamQuestions.Add(new ExamQuestion() { Exam = exam, Question = question, SortOrder = 1 });
            db.SubmitChanges();
            
            question.QuestionAnswers.Add(new QuestionAnswer() { Question = question, Exam = exam,  UserProfile = expectedProfile, Answer = "answer" });
            db.SubmitChanges();
            return (from e in db.Questions
                  where e.QuestionId == question.QuestionId
                  select e).First();
        }

        [Test]
        public void Given_that_that_the_user_has_answered_the_question_the_scorer_should_be_able_to_assign_a_score_of_80_points()
        {
            var actualQuestion = SaveDefaultQuestionAnswer();

            var answer = actualQuestion.QuestionAnswers.First();
            answer.Score = 80;
            answer.ScorerProfile = answer.UserProfile;
            answer.Comment = "Good attempt";
            db.SubmitChanges();

            var confirmAnswer = (from qa in db.QuestionAnswers
                where qa.QuestionAnswerId == answer.QuestionAnswerId
                select qa).First();

            Assert.AreEqual(80, confirmAnswer.Score);
            Assert.AreEqual(answer.UserId, confirmAnswer.ScorerId);
            Assert.AreEqual("Good attempt", confirmAnswer.Comment);

            //Confirmation


        }

        [Test]
        public void Question_HasMultipleAnswerers()
        {
            var question = new Question() { QuestionText = "Text", QuestionType = "M", QuestionCategory = "Category" };
            var exam = new Exam() { Instructions = "instructions", Title = "title", Status = true };
            var userProfile = new UserProfile() { EmailAddress = "email", FirstName = "first", LastName = "last", GradeLevel = "5", Password = "pass", UserType = 'S', Status = true };
            var userProfile2 = new UserProfile() { EmailAddress = "email2", FirstName = "first", LastName = "last", GradeLevel = "5", Password = "pass", UserType = 'S', Status = true };
            var questionAnswer = new QuestionAnswer() { Question = question, Answer = "answer", Exam = exam, UserProfile = userProfile };
            var questionAnswer2 = new QuestionAnswer() { Question = question, Answer = "answer", Exam = exam, UserProfile = userProfile2 };
            question.QuestionAnswers.Add(questionAnswer);
            question.QuestionAnswers.Add(questionAnswer2);
            db.Questions.InsertOnSubmit(question);
            db.Exams.InsertOnSubmit(exam);
            db.UserProfiles.InsertAllOnSubmit(new List<UserProfile>() { userProfile, userProfile2 });
            db.QuestionAnswers.InsertAllOnSubmit(new List<QuestionAnswer>() { questionAnswer, questionAnswer2 });
            db.SubmitChanges();
            var actualQuestionAnswers = (from qa in db.QuestionAnswers where qa.QuestionId == question.QuestionId && qa.ExamId == exam.ExamId select qa).ToList();
            Assert.AreEqual(2, actualQuestionAnswers.Count);
        }
    }
}
