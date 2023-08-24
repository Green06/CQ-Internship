import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { EmployeList } from '../employe-list';
import { EmployeeService } from 'src/app/employee.service';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-employee-details',
  templateUrl: './employee-details.component.html',
  styleUrls: ['./employee-details.component.sass'],
})
export class EmployeeDetailsComponent {
  // @Input() ip?:EmployeList;
  // @Output() back:EventEmitter<boolean>= new EventEmitter();
  public empList: Array<EmployeList> = [];
  public employeeId: number = 0;
  ip!: EmployeList;

  // Display(){
  //   this.back.emit()
  // }

  constructor(
    private empService: EmployeeService,
    private route: ActivatedRoute,
    private router: Router
  ) {
    // this.empList = this.empService.EmployeList!;
  }
  ngOnInit(): void
   {
    console.log(this.route);
    const id: Number = this.route.snapshot.params['id'];
    this.employeeId = Number(id);

    this.empService.findById(this.employeeId).subscribe((x) => {
      if (x) {
        this.ip = x;          
      }
    });
  }

  change() {
    this.router.navigate(['./employee']);
  }
}
