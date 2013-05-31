#import "Kiwi.h"
#import "TWNumberValidator.h"

SPEC_BEGIN(NumberValidatorSpec)

describe(@"Number Validator", ^{
    it(@"should say that the number is invalid when number contains alphabets", ^{
        [[theValue([TWNumberValidator validate:@"1234a"]) should] equal: theValue(NO)];
    });
    
    it(@"should say that the number is invalid when number contains symbols", ^{
        [[theValue([TWNumberValidator validate:@"1234$"]) should] equal: theValue(NO)];
    });

    it(@"should say that the number is valid for valid number", ^{
        [[theValue([TWNumberValidator validate:@"1234"]) should] equal: theValue(YES)];
    });
    
    it(@"should say that the number is valid when number contains zero", ^{
        [[theValue([TWNumberValidator validate:@"1230"]) should] equal: theValue(YES)];
    });
    
    it(@"should say that the number is valid when number contains nine", ^{
        [[theValue([TWNumberValidator validate:@"1239"]) should] equal: theValue(YES)];
    });
});

SPEC_END