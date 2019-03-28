package org.rhine.mybatis.demo.lazyload;

import java.util.List;

public interface JobDataMapper {

    List<JobData> queryJobDataListByJobId(Long jobId);

}
