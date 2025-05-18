<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Room Management - Hostel Admin</title>
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/AdminCss/styles.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  
  

</head>
<body>
  <div class="hostel-admin">
    <!-- Sidebar -->
          <c:set var="activePage" value="complaints" scope="request" />
 <jsp:include page="/Pages/AdminPages/Components/sidebar.jsp"/>

      <!-- Main Content -->
    <div class="content" id="content" >
       <jsp:include page="/Pages/AdminPages/Components/topbar.jsp"/>


      <div class="page-header">
        <h1>Complaints & Feedback</h1>
        <div class="actions">
          <div class="filter-group">
            <label for="complaint-filter">Filter by:</label>
            <select id="complaint-filter" class="form-select">
              <option value="all">All Complaints</option>
              <option value="pending">Pending</option>
              <option value="inprogress">In Progress</option>
              <option value="resolved">Resolved</option>
              <option value="rejected">Rejected</option>
            </select>
          </div>
          <div class="filter-group">
            <label for="type-filter">Type:</label>
            <select id="type-filter" class="form-select">
              <option value="all">All Types</option>
              <option value="maintenance">Maintenance</option>
              <option value="security">Security</option>
              <option value="food">Food & Mess</option>
              <option value="behavior">Behavior</option>
              <option value="suggestion">Suggestion</option>
            </select>
          </div>
        </div>
      </div>
      
      <!-- Complaints Summary Stats -->
      <div class="dashboard-stats">
        <div class="stat-card">
          <div class="stat-icon blue">
            <i class="fas fa-exclamation-circle"></i>
          </div>
          <div class="stat-info">
            <h3>Total Complaints</h3>
            <p class="stat-number">48</p>
          </div>
        </div>
        <div class="stat-card">
          <div class="stat-icon amber">
            <i class="fas fa-clock"></i>
          </div>
          <div class="stat-info">
            <h3>Pending</h3>
            <p class="stat-number">12</p>
          </div>
        </div>
        <div class="stat-card">
          <div class="stat-icon purple">
            <i class="fas fa-hourglass-half"></i>
          </div>
          <div class="stat-info">
            <h3>In Progress</h3>
            <p class="stat-number">18</p>
          </div>
        </div>
        <div class="stat-card">
          <div class="stat-icon green">
            <i class="fas fa-check-circle"></i>
          </div>
          <div class="stat-info">
            <h3>Resolved</h3>
            <p class="stat-number">18</p>
          </div>
        </div>
      </div>

      <!-- Complaints Table -->
      <div class="table-container">
        <table class="admin-table">
          <thead>
            <tr>
              <th>Complaint ID</th>
              <th>Student</th>
              <th>Room</th>
              <th>Category</th>
              <th>Subject</th>
              <th>Date Filed</th>
              <th>Status</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>COMP-1001</td>
              <td>John Doe</td>
              <td>A-101</td>
              <td><span class="badge badge-maintenance">Maintenance</span></td>
              <td>Leaking tap in bathroom</td>
              <td>June 15, 2023</td>
              <td><span class="badge badge-pending">Pending</span></td>
              <td>
                <button class="btn-icon" onclick="openModal('viewComplaintModal')"><i class="fas fa-eye"></i></button>
                <button class="btn-icon"><i class="fas fa-edit"></i></button>
              </td>
            </tr>
            <tr>
              <td>COMP-1002</td>
              <td>Jane Smith</td>
              <td>A-103</td>
              <td><span class="badge badge-security">Security</span></td>
              <td>Broken window lock</td>
              <td>June 14, 2023</td>
              <td><span class="badge badge-inprogress">In Progress</span></td>
              <td>
                <button class="btn-icon" onclick="openModal('viewComplaintModal')"><i class="fas fa-eye"></i></button>
                <button class="btn-icon"><i class="fas fa-edit"></i></button>
              </td>
            </tr>
            <tr>
              <td>COMP-1003</td>
              <td>Michael Johnson</td>
              <td>C-101</td>
              <td><span class="badge badge-food">Food</span></td>
              <td>Poor food quality in mess</td>
              <td>June 13, 2023</td>
              <td><span class="badge badge-inprogress">In Progress</span></td>
              <td>
                <button class="btn-icon" onclick="openModal('viewComplaintModal')"><i class="fas fa-eye"></i></button>
                <button class="btn-icon"><i class="fas fa-edit"></i></button>
              </td>
            </tr>
            <tr>
              <td>COMP-1004</td>
              <td>Emma Wilson</td>
              <td>B-202</td>
              <td><span class="badge badge-security">Security</span></td>
              <td>Unauthorized access to floor</td>
              <td>June 12, 2023</td>
              <td><span class="badge badge-resolved">Resolved</span></td>
              <td>
                <button class="btn-icon" onclick="openModal('viewComplaintModal')"><i class="fas fa-eye"></i></button>
                <button class="btn-icon"><i class="fas fa-edit"></i></button>
              </td>
            </tr>
            <tr>
              <td>COMP-1005</td>
              <td>Robert Brown</td>
              <td>A-105</td>
              <td><span class="badge badge-maintenance">Maintenance</span></td>
              <td>AC not working properly</td>
              <td>June 11, 2023</td>
              <td><span class="badge badge-pending">Pending</span></td>
              <td>
                <button class="btn-icon" onclick="openModal('viewComplaintModal')"><i class="fas fa-eye"></i></button>
                <button class="btn-icon"><i class="fas fa-edit"></i></button>
              </td>
            </tr>
            <tr>
              <td>COMP-1006</td>
              <td>Olivia Davis</td>
              <td>D-103</td>
              <td><span class="badge badge-suggestion">Suggestion</span></td>
              <td>Extended study hours in common room</td>
              <td>June 10, 2023</td>
              <td><span class="badge badge-resolved">Resolved</span></td>
              <td>
                <button class="btn-icon" onclick="openModal('viewComplaintModal')"><i class="fas fa-eye"></i></button>
                <button class="btn-icon"><i class="fas fa-edit"></i></button>
              </td>
            </tr>
            <tr>
              <td>COMP-1007</td>
              <td>James Wilson</td>
              <td>B-101</td>
              <td><span class="badge badge-behavior">Behavior</span></td>
              <td>Noise disturbance from adjacent room</td>
              <td>June 9, 2023</td>
              <td><span class="badge badge-rejected">Rejected</span></td>
              <td>
                <button class="btn-icon" onclick="openModal('viewComplaintModal')"><i class="fas fa-eye"></i></button>
                <button class="btn-icon"><i class="fas fa-edit"></i></button>
              </td>
            </tr>
          </tbody>
        </table>
      </div>

      <!-- Pagination -->
      <div class="pagination">
        <button class="btn-page disabled"><i class="fas fa-chevron-left"></i></button>
        <button class="btn-page active">1</button>
        <button class="btn-page">2</button>
        <button class="btn-page">3</button>
        <button class="btn-page">4</button>
        <button class="btn-page"><i class="fas fa-chevron-right"></i></button>
      </div>
    </div>
  </div>

  <!-- View Complaint Modal -->
  <div id="viewComplaintModal" class="modal-backdrop">
    <div class="modal">
      <div class="modal-header">
        <h3>Complaint Details - COMP-1001</h3>
        <button class="close-btn" onclick="closeModal('viewComplaintModal')"><i class="fas fa-times"></i></button>
      </div>
      <div class="modal-body">
        <div class="complaint-details">
          <div class="complaint-header">
            <div class="complaint-status">
              <span class="badge badge-pending">Pending</span>
              <span class="complaint-date">Filed on: June 15, 2023</span>
            </div>
            <div class="complaint-subject">
              <h4>Leaking tap in bathroom</h4>
              <span class="badge badge-maintenance">Maintenance</span>
            </div>
          </div>
          
          <div class="details-section">
            <h4>Complainant Information</h4>
            <div class="student-info">
              <img src="https://via.placeholder.com/60" alt="Student Photo" class="student-photo">
              <div>
                <h5>John Doe</h5>
                <p>Student ID: STU12345</p>
                <p>Room: A-101</p>
                <p>Contact: +1 234-567-8901</p>
              </div>
            </div>
          </div>
          
          <div class="details-section">
            <h4>Complaint Description</h4>
            <p>The bathroom tap has been continuously leaking for the past two days. It's causing water wastage and creating a puddle on the floor which is a safety hazard. I've been using a bucket to collect the water, but it needs urgent fixing.</p>
          </div>
          
          <div class="details-section">
            <h4>Attached Photos</h4>
            <div class="complaint-images">
              <div class="complaint-image">
                <img src="https://via.placeholder.com/150" alt="Complaint Photo 1">
                <a href="#" class="btn-text">View Full</a>
              </div>
              <div class="complaint-image">
                <img src="https://via.placeholder.com/150" alt="Complaint Photo 2">
                <a href="#" class="btn-text">View Full</a>
              </div>
            </div>
          </div>
          
          <div class="details-section">
            <h4>Status Updates</h4>
            <div class="status-timeline">
              <div class="timeline-item">
                <div class="timeline-icon blue">
                  <i class="fas fa-file-alt"></i>
                </div>
                <div class="timeline-content">
                  <h5>Complaint Filed</h5>
                  <p>The complaint was submitted by the student.</p>
                  <div class="timeline-meta">
                    <span class="timeline-date">June 15, 2023 - 10:23 AM</span>
                  </div>
                </div>
              </div>
              <div class="timeline-item">
                <div class="timeline-icon green">
                  <i class="fas fa-check"></i>
                </div>
                <div class="timeline-content">
                  <h5>Complaint Acknowledged</h5>
                  <p>The complaint has been received and is under review.</p>
                  <div class="timeline-meta">
                    <span class="timeline-date">June 15, 2023 - 11:45 AM</span>
                    <span class="timeline-user">by Admin</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          <div class="details-section">
            <h4>Update Status</h4>
            <div class="form-row">
              <div class="form-group">
                <label for="newStatus" class="form-label">Status</label>
                <select id="newStatus" class="form-select">
                  <option value="pending" selected>Pending</option>
                  <option value="inprogress">In Progress</option>
                  <option value="resolved">Resolved</option>
                  <option value="rejected">Rejected</option>
                </select>
              </div>
              <div class="form-group">
                <label for="assignTo" class="form-label">Assign To</label>
                <select id="assignTo" class="form-select">
                  <option value="">Select Staff</option>
                  <option value="maintenance1">John Smith - Maintenance</option>
                  <option value="maintenance2">Robert Johnson - Maintenance</option>
                  <option value="security1">Michael Davis - Security</option>
                </select>
              </div>
            </div>
            <div class="form-group">
              <label for="statusComment" class="form-label">Comment</label>
              <textarea id="statusComment" class="form-textarea" placeholder="Add a status update comment..."></textarea>
            </div>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button class="btn btn-outline" onclick="closeModal('viewComplaintModal')">Close</button>
        <button class="btn btn-danger">Reject Complaint</button>
        <button class="btn btn-primary">Update Status</button>
      </div>
    </div>
  </div>

  <script>
    // Toggle sidebar

    // Modal functions
    function openModal(modalId) {
      document.getElementById(modalId).classList.add('show');
      document.body.style.overflow = 'hidden';
    }

    function closeModal(modalId) {
      document.getElementById(modalId).classList.remove('show');
      document.body.style.overflow = 'auto';
    }
  </script>
  
  <!-- IMPORTANT: DO NOT REMOVE THIS SCRIPT TAG OR THIS VERY COMMENT! -->
  <script src="https://cdn.gpteng.co/gptengineer.js" type="module"></script>
</body>
</html>