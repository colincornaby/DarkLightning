/**
 *	The MIT License (MIT)
 *
 *	Copyright (c) 2015 Jens Meder
 *
 *	Permission is hereby granted, free of charge, to any person obtaining a copy of
 *	this software and associated documentation files (the "Software"), to deal in
 *	the Software without restriction, including without limitation the rights to
 *	use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 *	the Software, and to permit persons to whom the Software is furnished to do so,
 *	subject to the following conditions:
 *
 *	The above copyright notice and this permission notice shall be included in all
 *	copies or substantial portions of the Software.
 *
 *	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 *	FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 *	COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 *	IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 *	CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

#import <Kiwi/Kiwi.h>
#import "JMPathSocket.h"

SPEC_BEGIN(JMPathSocketTests)

describe(@"JMPathSocket",
		 ^{
			 context(@"when initializing",
					 ^{
						 it(@"should return nil if path is nil",
							^{
								JMPathSocket* socket = [[JMPathSocket alloc]initWithPath:nil];
								
								[[socket should] beNil];
							});
						 
						 it(@"should return nil if path is empty string",
							^{
								JMPathSocket* socket = [[JMPathSocket alloc]initWithPath:@""];
								
								[[socket should] beNil];
							});
						 
						 it(@"should return a new socket if path is valid",
							^{
								JMPathSocket* socket = [[JMPathSocket alloc]initWithPath:@"/var/run/usbmuxd"];
								
								[[socket shouldNot] beNil];
							});
						 
					 });
		 });

SPEC_END