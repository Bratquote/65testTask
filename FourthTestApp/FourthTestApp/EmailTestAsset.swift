//
//  EmailTestAsset.swift
//  FourthTestApp
//
//  Created by Timur Karimov on 21.09.2020.
//

import Foundation


class EmailTestAsset {
    
    
    static var validEmails: [String] = ["albina.hand@altenwerth.com",
                                 "brobel@hotmail.com",
                                 "zora96@reynolds.info",
                                 "annabelle19@mcclure.org",
                                 "harber.lenna@yahoo.com",
                                 "constantin.rath@hahn.biz",
                                 "wiegand.frances@gmail.com",
                                 "jordy.jenkins@yahoo.com",
                                 "dereck58@weber.net",
                                 "stephan20@gmail.com",
                                 "adella.cummerata@yahoo.com",
                                 "rossie.baumbach@cassin.org",
                                 "onie36@larson.com",
                                 "simonis.gail@yahoo.com",
                                 "travon45@hotmail.com",
                                 "rveum@schoen.com",
                                 "mac34@cartwright.com",
                                 "dwintheiser@gmail.com",
                                 "roberta66@stark.net",
                                 "kreynolds@ratke.info",
                                 "nathan.gutkowski@schoen.com",
                                 "katharina85@hotmail.com",
                                 "orie31@bergnaum.com",
                                 "dare.maximillia@west.com",
                                 "hodkiewicz.hillard@gmail.com",
                                 "tressie.kub@erdman.com",
                                 "yvette.kilback@medhurst.org",
                                 "belle.gerhold@schamberger.com",
                                 "wunsch.marie@huels.com",
                                 "lenore72@cole.com",
                                 "madilyn.hodkiewicz@yahoo.com",
                                 "emilie26@schuppe.com",
                                 "geovany.crooks@yahoo.com",
                                 "alysa.wisozk@brekke.com",
                                 "reina26@boyer.com",
                                 "collier.river@hotmail.com",
                                 "mills.reese@friesen.com",
                                 "baylee.hintz@mcclure.info",
                                 "dlemke@volkman.com",
                                 "swift.quinton@yahoo.com",
                                 "qquigley@jacobi.com",
                                 "jjast@gmail.com",
                                 "thaddeus.cummerata@dickinson.com",
                                 "uturner@boyle.biz"]
    
    
   // "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    
    static var invalidEmails: [String] = ["?????@yansex.ru", "@ua.ru", "hello@m-r.ru", "65lengthkddekkekkekkekkekkekkekkkekkekkekk@vvv.kethkddekkekkekkekkekkekkekkkekkekkekkthkddekkekkekkekkekkekkekkkekkekkekkekkekkekkkekkekkekkke","plainaddress",
                                          "#@%^%#$@#$@#.com",
                                          "@example.com",
                                          "Joe Smith <email@example.com>",
                                          "email.example.com",
                                          "email@example@example.com",
                                          ".email@example.com",
                                          "email.@example.com",
                                          "email..email@example.com",
                                          "あいうえお@example.com",
                                          "email@example.com (Joe Smith)",
                                          "email@example",
                                          "email@-example.com",
                                          "email@111.222.333.44444",
                                          "email@example..com",
                                          "Abc..123@example.com",
                                            "",
                                            "email@yandex.r"]
        
    static var validLogins: [String] = ["Timur", "H9-1234re", "LOGIN", "Kek", "e-----------", "t43.-123.-.5", "Length32numberwwwwwwwwwwwwwwwwww", "P3433"]
    
    static var invalidLogins: [String] = ["Tt","Qwertyuiopasdfdsaasdfdsasdafdsads", "Qwertyuiopasdfdsaasdfdsasdafdsadd", "jsndkjvn?", "99rrwewr", ".123rewfw", "-1234213"]
    
}
