using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


/// Variables to inert Feedback into database 

public class FeedbackUiInfo
{
    int Trainer_id;
    int Questionid;
    int Feedback;
    Dictionary<int, int> Answers = new Dictionary<int, int>();

}