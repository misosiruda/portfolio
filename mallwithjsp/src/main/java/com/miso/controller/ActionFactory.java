package com.miso.controller;

import com.miso.controller.action.Action;
import com.miso.controller.action.BoardCheckPassAction;
import com.miso.controller.action.BoardCheckPassFormAction;
import com.miso.controller.action.BoardDeleteAction;
import com.miso.controller.action.BoardListAction;
import com.miso.controller.action.BoardUpdateAction;
import com.miso.controller.action.BoardUpdateFormAction;
import com.miso.controller.action.BoardViewAction;
import com.miso.controller.action.BoardWriteAction;
import com.miso.controller.action.BoardWriteFormAction;
import com.miso.controller.action.HomepageAction;
import com.miso.controller.action.LoginCheckAction;
import com.miso.controller.action.LogoutAction;
import com.miso.controller.action.SignAccountAction;

public class ActionFactory {

    private ActionFactory() {
    }

    private static ActionFactory instance;

    public static ActionFactory getInstance() {
        if (instance == null) {
            instance = new ActionFactory();
        }
        return instance;
    }

    public Action getAction(String command) {
        Action action = null;
        System.out.println("actionFactory command : " + command);
        if (command == null) {
            action = new HomepageAction();
        } else if (command.equals("hompage")) {
            action = new HomepageAction();
        } else if (command.equals("login_check")) {
            action = new LoginCheckAction();
        } else if (command.equals("logout")) {
            action = new LogoutAction();
        } else if (command.equals("sign_account")) {
            action = new SignAccountAction();
        } else if (command.equals("board_list")) {
            action = new BoardListAction();
        } else if (command.equals("board_write_form")) {
            action = new BoardWriteFormAction();
        } else if (command.equals("board_write")) {
            action = new BoardWriteAction();
        } else if (command.equals("board_view")) {
            action = new BoardViewAction();
        } else if (command.equals("board_check_pass_form")) {
            action = new BoardCheckPassFormAction();
        } else if (command.equals("board_check_pass")) {
            action = new BoardCheckPassAction();
        } else if (command.equals("board_update_form")) {
            action = new BoardUpdateFormAction();
        } else if (command.equals("board_update")) {
            action = new BoardUpdateAction();
        } else if (command.equals("board_delete")) {
            action = new BoardDeleteAction();
        }

        return action;
    }
}
