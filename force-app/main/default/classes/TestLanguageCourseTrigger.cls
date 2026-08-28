@IsTest
private class TestLanguageCourseTrigger {
    @IsTest
    static void testTrigger() {
        Language_Course_Instructor__c instructor =
            new Language_Course_Instructor__c(
                Name = 'Test Instructor'
            );
        insert instructor;

        Language_Course__c course =
            new Language_Course__c(
                Name = 'Test Course',
                Course_Instructor__c = instructor.Id
            );
        insert course;

        delete course;
    }
}