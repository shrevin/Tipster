//
//  TipViewController.m
//  Tipster
//
//  Created by Shreya Vinjamuri on 6/14/22.
//

#import "TipViewController.h"

@interface TipViewController ()
// an outlet for bill text field
@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipSegCtrl;

@end

@implementation TipViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
// action method for the tap gesture
- (IBAction)onTap:(id)sender {
    //NSLog(@"Tapped"); // Make sure to add the @ symbol, logging message everytime screen is tapped
    // code to dismiss the keyboard
    [self.view endEditing:true];

}

- (IBAction)updateTotal:(id)sender {
    double tipPercentages[] = {0.15, 0.20, 0.25};
    double selectedTipPercent = tipPercentages[self.tipSegCtrl.selectedSegmentIndex];
    double tipAmount = selectedTipPercent* [self.billField.text doubleValue];
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tipAmount];
    NSLog(@"%@", [NSString stringWithFormat:@"$%.2f", tipAmount]);
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", tipAmount + [self.billField.text doubleValue]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
