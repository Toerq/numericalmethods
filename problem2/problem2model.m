function y_ut = problem2model(t,y)
    global alfaa alfaprima alfar alfaprimr betaa betar;
    global deltama deltamr deltaa deltar;
    global yotaa yotar yotac thetaa thetar;
    
    y_ut = [thetaa*y(3)-yotaa*y(1)*y(7);
            thetar*y(4)-yotar*y(2)*y(7);
            yotaa*y(1)*y(7)-thetaa*y(3);
            yotar*y(2)*y(7)-thetar*y(4);
            alfaprima*y(3)+alfaa*y(1)-deltama*y(5);
            alfaprimr*y(4)+alfar*y(2)-deltamr*y(6);
            betaa*y(5)+thetaa*y(3)+thetar*y(4)-y(7)*(yotaa*y(1)+yotar*y(2)+yotac*y(8)+deltaa);
            betar*y(6)-yotac*y(7)*y(8)+deltaa*y(9)-deltar*y(8);
            yotac*y(7)*y(8)-deltaa*y(9)];
