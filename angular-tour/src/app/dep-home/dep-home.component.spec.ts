import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DepHomeComponent } from './dep-home.component';

describe('DepHomeComponent', () => {
  let component: DepHomeComponent;
  let fixture: ComponentFixture<DepHomeComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DepHomeComponent]
    });
    fixture = TestBed.createComponent(DepHomeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
