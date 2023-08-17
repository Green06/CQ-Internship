import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DepNameComponent } from './dep-name.component';

describe('DepNameComponent', () => {
  let component: DepNameComponent;
  let fixture: ComponentFixture<DepNameComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DepNameComponent]
    });
    fixture = TestBed.createComponent(DepNameComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
