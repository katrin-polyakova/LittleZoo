//
//  StringPlayTests.m
//  Little Zoo
//
//  Created by Kate Polyakova on 1/11/15.
//  Copyright (c) 2015 Kate Polyakova. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface StringPlayTests : XCTestCase

@end

@implementation StringPlayTests

- (void)testExample1
{
    NSString *name = @"Котейко";
    float weight = 5.f;
    
    NSString *message = [NSString stringWithFormat:@"А этот %@ весит аж %g килограммов!", name, weight];
    
    NSLog(@"%@", message);
}

- (void)testExample2
{
    NSString *name = @"Бублик";
    
    // организовали цикл от 0 до длины строки
    // (символы в строке, как и элементы в массивы нумеруются с 0)
    for (NSUInteger i = 0; i < [name length]; i++) {
        
        // получили символ:
        unichar letter = [name characterAtIndex:i];
        
        // напечатали позицию символа и сам сивол в консоль:
        NSLog(@"%d: %C", i, letter);
    }
}

//проверка на эквивалентность
- (void)testExample3
{
    NSString *name1 = @"Мурзилка";
    NSString *name2 = [NSString stringWithFormat:@"%@%@",@"Мур",@"зилка"];
    
    NSLog(@"name1 == name2 ----> %d", name1 == name2);
    NSLog(@"[name1 isEqualToString:name2] ----> %d", [name1 isEqualToString:name2]);
}

- (void)testExample4
{
    NSString *name1 = @"Мурзилка";
    NSString *name2 = [NSString stringWithFormat:@"%@%@",@"Мур",@"зилка"];
    NSString *name3 = @"Мурзилка";
    
    NSLog(@"name1 == name2 ----> %d", name1 == name2);
    NSLog(@"name1 == name3 ----> %d", name1 == name3); //будет 1 т.к. происходит интернирование строк и существует StringPool
    
}

//частичное сравнение
- (void)testExample5
{
    NSString *url = @"https://example.com/pictures/ibm.jpg";
    
    if ([url hasPrefix:@"https"]) {
        NSLog(@"используется защищенный протокл");
    }
    if ([url hasSuffix:@"jpg"]) {
        NSLog(@"url на картинку");
    }
    if ([url hasSuffix:@"pdf"]) {
        NSLog(@"url на документ");
    }
    
}

//сравнение
- (void)testExample6_1
{
    NSString *string1 = @"Арбуз";
    NSString *string2 = @"Тыква";
    
    if ([string1 compare:string2] == NSOrderedAscending) {
        NSLog(@"Буква 'А' встречается в алфавите раньше буквы 'Т'");
    }
    
    if ([string2 compare:string1] == NSOrderedDescending) {
        NSLog(@"Буква 'Т' встречается в алфавите позже буквы 'А'");
    }
    
    if ([string2 compare:string2] == NSOrderedSame) {
        NSLog(@"Мы сравниваем одинаковые строки");
    }
}

- (void)testExample6_2
{
    NSString *string1 = @"Арбуз";
    NSString *string2 = @"арбуз";
    
    if ([string1 compare:string2] == NSOrderedAscending) {
        NSLog(@"Буква 'А' встречается в алфавите раньше буквы 'a'");
    }
    
    if ([string2 compare:string1] == NSOrderedDescending) {
        NSLog(@"Буква 'a' встречается в алфавите позже буквы 'A'");
    }
    
    if ([string1 caseInsensitiveCompare:string2] == NSOrderedSame) {
        NSLog(@"Мы сравниваем одинаковые строки");
    }
}

//поиск подстрок
- (void)testExample7
{
    NSString *line = @"- Кто там ходит в огороде? "
                      "- Это я, козел Мефодий.";
    
    NSRange searchResult = [line rangeOfString:@"ходит"];
    
    if (searchResult.location == NSNotFound) {
        NSLog(@"Подстрока не найдена");
    } else {
        NSLog(@"'ходит' начинается c индекса %u и содержит %u символов в длину",
              searchResult.location,
              searchResult.length);
    }
}

//замена подстрок
- (void)testExample8
{
    NSString *line = @"- Кто там ходит ходит ходит в огороде? "
                      "- Это я, козёл козёл козел Мефодий.";
    NSLog(@"Исходная: %@", line);
    
    NSRange range = [line rangeOfString:@"ходит"];
    
    NSString *editedLine1 = [line stringByReplacingCharactersInRange:range withString:@"бродит"];//первое вхождение
    NSLog(@"замена1: %@", editedLine1);
    
    NSString *editedLine2 = [editedLine1 stringByReplacingOccurrencesOfString:@"козёл" withString:@"осёл"]; //все вхождения
    NSLog(@"замена2: %@", editedLine2);
}

//комбинирование строк
- (void)testExample9
{
    NSString *phrase1 = @"- Это я,";
    NSString *phrase2 = @"козёл Мефодий.";
    
    NSString *phrase3 = [phrase1 stringByAppendingString:phrase2];
    NSLog(@"%@", phrase3);
    
    NSString *phrase4 = [phrase1 stringByAppendingFormat:@" %@", phrase2];
    NSLog(@"%@", phrase4);
}

//разбиение на подстроки
- (void)testExample10_1
{
    NSString *string = @"- Кто там ходит в огороде?";
    
    NSLog(@"%@", [string substringToIndex:15]); //index указываем на 1 символ больше, т.к. символ не включается
    
    NSLog(@"%@", [string substringFromIndex:16]); //index передается включительно
    
    NSRange range = NSMakeRange(16, 1);
    NSLog(@"%@", [string substringWithRange:range]);

    NSLog(@"%@", [string substringToIndex:string.length-1]);
}

- (void)testExample10_2
{
    NSString *vegetables = @"Редька, Лук, Морковка, Сельдерей, Брокколи, Шпинат";
    
    NSArray *vegetablesAsArray = [vegetables componentsSeparatedByString:@", "];
    NSLog(@"%@", vegetablesAsArray[2]);

    for(NSString * string in vegetablesAsArray){
        NSLog(@"%@", string);
    }
}

//изменение регистра
- (void)testExample11
{
    NSString *string = @"чТо тУт с реГИстРом?!";
    NSLog(@"%@", string);
    NSLog(@"%@", [string lowercaseString]);
    NSLog(@"%@", [string uppercaseString]);
    NSLog(@"%@", [string capitalizedString]);
}

//числовые преобразования
- (void)testExample12
{
    NSString *year = @"2012";
    BOOL asBool = [year boolValue];
    int asInt = [year intValue];
    NSInteger asInteger = [year integerValue];
    long long asLongLong = [year longLongValue];
    float asFloat = [year floatValue];
    double asDouble = [year doubleValue];
}

//редактирование
- (void)testExample13
{
    NSMutableString *string = [NSMutableString stringWithString:@"Дама сдавала в багаж"];
    
    [string appendString:@"Диван, Чемодан, Саквояж"];
    [string appendString:@"Картину, Корзину, Картонку"];
    [string appendString:@"И маленькую собачонку"];
    NSLog(@"%@", string);
    
    [string insertString:@"\n" atIndex:0];
    [string insertString:@"\n" atIndex:21];
    [string insertString:@"\n" atIndex:45];
    [string insertString:@"\n" atIndex:72];
    
    NSLog(@"%@", string);
}

- (void)testExample14
{
    NSMutableString *string = [NSMutableString string];
    [string setString:@"Дама сдавала в багаж"];
    
    NSLog(@"%@", string);
    
    [string replaceCharactersInRange:NSMakeRange(5, 7) withString:@"сдувала"];
    NSLog(@"%@", string);
    
    [string deleteCharactersInRange:NSMakeRange(12, 2)];
    NSLog(@"%@", string);
}

//NSString и NSMutableString
- (void)testExample15_1
{
    NSString *indices = @"";
    for (int i=0; i<1000; i++) {
        indices = [indices stringByAppendingFormat:@"%d", i];
    }
    NSLog(@"%@", indices);
}

- (void)testExample15_2
{
    NSMutableString *indices = [NSMutableString string];
    for (int i=0; i<1000; i++) {
        [indices appendFormat:@"%d", i];
    }
    NSLog(@"%@", indices);
}

-(void)testCharacterCalc{
    NSString *string = @"А-а-а, в Африке горы вот такой вышины!";
    NSString * targetChar =@"а";
    NSUInteger count = 0;

    for(NSUInteger i=0; i<string.length; i++){
        unichar testedChar = [string characterAtIndex:i];

        if(testedChar == [targetChar characterAtIndex:0]){
            count++;
        }
    }
    NSLog(@"Count of letter %@ is %d", targetChar, count);

//    NSString *string = @"А-а-а, в Африке горы вот такой вышины!";
//    unichar targetChar = 'а';
//    NSUInteger count = 0;
//
//    for(NSUInteger i=0; i<string.length; i++){
//        unichar testedChar = [string characterAtIndex:i];
//
//        if(testedChar == targetChar){
//            count++;
//        }
//    }
//    NSLog(@"Count of letter %C is %d", targetChar, count);

}

@end
