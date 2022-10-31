#script limit command 
RUN chsh -s /bin/rbash ehc
RUN mkdir /home/ehc/bin
RUN chmod 755 /home/ehc/bin
RUN echo "PATH=$HOME/bin" >> /home/ehc/.bashrc
RUN echo "export PATH" >> /home/ehc/.bashrc
RUN ln -s /bin/ls /home/ehc/bin/
RUN chattr +i /home/ehc/.bashrc