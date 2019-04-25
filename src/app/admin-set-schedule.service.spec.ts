import { TestBed } from '@angular/core/testing';

import { AdminSetScheduleService } from './admin-set-schedule.service';

describe('AdminSetScheduleService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: AdminSetScheduleService = TestBed.get(AdminSetScheduleService);
    expect(service).toBeTruthy();
  });
});
