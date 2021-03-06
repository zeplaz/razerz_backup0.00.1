//view lenz currently not wokring.
#pragma once
#include "gl_lib_z.hpp"




class view_lenz
{
  private :

  glm::vec3 lenz_pos = glm::vec3(0.0f,0.0f,3.0f);
  glm::vec3 lenz_target =  glm::vec3(0.0f,0.0f,0.0f);
  glm::vec3 lenz_up = glm::vec3(0.0f,1.0f,0.0f);
  glm::vec3 lenz_front = glm::vec3(0.0f,0.0f,-1.0f);
  glm::vec3 lenz_right;
  glm::vec3 world_up = glm::vec3(0.0f, 1.0f, 0.0f);
  glm::mat4 view = glm::mat4(1.0f);

  float MovementSpeed = 2.5;
  float Yaw =-90.0f;
  float Pitch = 0.0f;
  float Zoom =45.0f;
  float mouse_sesitivity =0.1f;


  float feild_of_view;
  float near_plane;
  float far_plane;
  float view_aspec_ratio;

  glm::vec3 get_lenz_reverse_drection()
  {
    return glm::normalize(lenz_pos-lenz_target);
  }

  void set_view_movement()
  {
    view = glm::lookAt(lenz_pos,lenz_pos+lenz_front,lenz_up);
  }



  void update_lenz()
  {
    glm::vec3 updatefront;
    updatefront.x = cos(glm::radians(Yaw)) * cos(glm::radians(Pitch));
    updatefront.y = sin(glm::radians(Pitch));
    updatefront.z = sin(glm::radians(Yaw)) * cos(glm::radians(Pitch));
    lenz_front = glm::normalize(updatefront);
    lenz_right = glm::normalize(glm::cross(lenz_front,world_up));
    lenz_up = glm::normalize(glm::cross(lenz_right, lenz_front));
  }
  public :
  void set_lenz();
  //void Process_keyboard(Camera_Movement direction_move, float delta_time);
  view_lenz()
  {
    feild_of_view=50.0f;
    near_plane=0.01f;
    far_plane = 1000.0f;
    view_aspec_ratio=(float)MAIN_SCREEN_WIDTH/(float)MAIN_SCREEN_HIGHT;
    update_lenz();
  }
  void update_aspec_ratio(GLint frame_buf_width,GLint frame_buf_hight)
  {
    float* viewport;
    //glGetFloatv(GL_VIEWPORT,viewport);
    //view_aspec_ratio=viewport[0]/viewport[1];
    view_aspec_ratio =(float)frame_buf_width/(float)frame_buf_hight;
  }

  void process_mouse(float xoff, float yoff)
  {
    xoff*=mouse_sesitivity;
    yoff*=mouse_sesitivity;
    Yaw +=xoff;
    Pitch +=yoff;
    if(Pitch>89.0f)
    Pitch = 89.0f;
    else if(Pitch <-89.0f)
    {
      Pitch = -89.0f;
    }
    update_lenz();
  }

  void process_scroll(float yoff)
  {
    if(Zoom>=1.0f && Zoom<=45.0f)
    {
      Zoom-=yoff;
    }
    else if(Zoom<=1.0f)
    {
      Zoom = 1.0f;
    }
    else if (Zoom>= 45.0f)
    {Zoom = 45.0f;}


  }
  void lenz_move(float delta_time, char key_press)
  {   float velocity = delta_time* MovementSpeed;
      switch(key_press)
      {
        case 'w' :
        {
          lenz_pos += velocity*lenz_front;
          break;
        }

        case 's' :
        {
         lenz_pos -=velocity*lenz_front;
          break;
        }

        case 'a' :
        {
          lenz_pos-= glm::normalize(glm::cross(lenz_front, lenz_up)) * velocity;
          break;
        }

        case 'd' :
        {
          lenz_pos+=glm::normalize(glm::cross(lenz_front, lenz_up)) * velocity;
          break;
        }
        default : break;
      }


  }

  glm::mat4 return_lenz_view()
  {
    glm::mat4 view_matrix(1.f);
    view_matrix = glm::lookAt(lenz_pos, lenz_pos + lenz_front, lenz_up);
     return view_matrix;
  }


  void normalize_anglez()
  {
    Pitch = fmodf(Pitch,360.0f);
    if(Pitch<0.0f)
    {
      Pitch+360.0f;
    }
    if(Yaw>MAX_V_ANGLE)
    {
      Yaw = MAX_V_ANGLE;
    }
      else if (Yaw<-MAX_V_ANGLE)
      {
        Yaw =-MAX_V_ANGLE;
      }
    }

  void set_postion();


  void set_feild_of_view(float fov)
  {
    feild_of_view=fov;
  }

  float aspect_ratio_cal();

  glm::mat4 return_orientation() const
  {
      glm::mat4 orientation;
      orientation = glm::rotate(orientation, glm::radians(Pitch), glm::vec3(1,0,0));
      orientation = glm::rotate(orientation, glm::radians(Yaw), glm::vec3(0,1,0));
    return orientation;
  }

  glm::mat4  translation_rotation();

  void update_cam_front()
  {
    glm::vec3 front;
    front.x = cos(glm::radians(Yaw))*cos(glm::radians(Pitch));
  }

  glm::mat4 lenz_projection()
  {
    glm::mat4 Projection(1.f);
    Projection = glm::perspective(glm::radians(feild_of_view),
                                            view_aspec_ratio, near_plane, far_plane);
   return Projection;
  }


    /*glm::vec3 lenz_right()
    {
      return glm::normalize(glm::cross(lenz_up,get_lenz_reverse_drection()));
    }

    glm::vec3 get_lenz_up()
    {
      return glm::cross(get_lenz_reverse_drection(),lenz_right());
    }

    /*void set_view_basic()
    {
      view = glm::lookAt(lenz_right(),get_lenz_up(),get_lenz_reverse_drection());
    }*/
};


/*

void view_lenz::Process_keyboard(Camera_Movement direction_move, float delta_time)
    {
      float velocity = MovementSpeed*delta_time;

      switch(direction_move)
      {
        case Camera_Movement::FORWARD :
        std::cout << Position;
        Position +=Front*velocity;

        std::cout << "Velocity::" <<velocity<< "newPOs" << Position << "front"<<Front <<'\n';
        break;

        case  Camera_Movement::BACKWARD :
        Position -=Front*velocity;
        break;

        case  Camera_Movement::LEFT :
        Position -=Right*velocity;
        break;

        case  Camera_Movement::RIGHT :
        Position =Right*velocity;
        break;
      }
    }*/
