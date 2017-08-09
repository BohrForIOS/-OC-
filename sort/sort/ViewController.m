//
//  ViewController.m
//  sort
//
//  Created by 王二 on 17/8/9.
//  Copyright © 2017年 mbs008. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self selectionSort];
//    [self bubbleSort];
    [self insertSort];
}

/**
 选择排序
 1. 首先在未排序序列中找到最小（大）元素，存放到排序序列的起始位置
 
 2. 再从剩余未排序元素中继续寻找最小（大）元素，然后放到已排序序列的末尾。
 
 3. 重复第二步，直到所有元素均排序完毕。
 */
- (void)selectionSort {
    NSMutableArray *arr = [NSMutableArray arrayWithObjects:@(1),@(4),@(2),@(3),@(6),@(5), nil];
    
    for (int i = 0; i < arr.count; i++) {
        for (int j = i + 1; j < arr.count; j++) {
            NSInteger no1 = [arr[i] integerValue];
            NSInteger no2 = [arr[j] integerValue];
            
            if (no1 > no2) {
                [arr exchangeObjectAtIndex:i withObjectAtIndex:j];
            }
        }
    }
    
    NSLog(@"%@", arr);
}

/**
 冒泡排序
 1. 比较相邻的元素。如果第一个比第二个大，就交换他们两个。
 
 2. 对每一对相邻元素作同样的工作，从开始第一对到结尾的最后一对。这步做完后，最后的元素会是最大的数。
 
 3. 针对所有的元素重复以上的步骤，除了最后一个。
 
 4. 持续每次对越来越少的元素重复上面的步骤，直到没有任何一对数字需要比较。
 */
- (void)bubbleSort {
    NSMutableArray *arr = [NSMutableArray arrayWithObjects:@(1),@(4),@(2),@(3),@(6),@(5), nil];
    
    for (int i = 0; i < arr.count; i++) {
        for (int j = 0; j < arr.count; j++) {
            NSInteger no1 = [arr[i] integerValue];
            NSInteger no2 = [arr[j] integerValue];
            
            if (no1 < no2) {
                NSInteger temp = [arr[i] integerValue];
                arr[i] = arr[j];
                arr[j] = @(temp);
            }
        }
    }
    
    NSLog(@"%@", arr);
}

/**
 插入排序
 1. 将第一待排序序列第一个元素看做一个有序序列，把第二个元素到最后一个元素当成是未排序序列。
 
 2. 从头到尾依次扫描未排序序列，将扫描到的每个元素插入有序序列的适当位置。（如果待插入的元素与有序序列中的某个元素相等，则将待插入元素插入到相等元素的后面。）
 */
- (void)insertSort {
    NSMutableArray *arr = [NSMutableArray arrayWithObjects:@(1),@(4),@(2),@(3),@(6),@(5), nil];
    
    for (int i = 1; i < arr.count; i++) {
        for (int j = i - 1; j >= 0; j--) {
            NSInteger no1 = [arr[i] integerValue];
            NSInteger no2 = [arr[j] integerValue];
            
            if (no1 < no2) {
                NSInteger temp = [arr[i] integerValue];
                arr[i] = arr[j];
                arr[j] = @(temp);
            }
        }
    }
    
    NSLog(@"%@", arr);
}

@end
