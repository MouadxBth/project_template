# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Files.mk                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbouthai <mbouthai@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/12 23:45:12 by mbouthai          #+#    #+#              #
#    Updated: 2023/04/14 13:17:53 by mbouthai         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Headers/Includes

HEADERS_DIR	:= inc

#HEADERS	= minishell.h
#HEADERS	:= $(addprefix $(HEADERS_DIR)/,$(HEADERS))

# Sources

SRCS_DIR	:= src

SOURCES	= minishell.c
SOURCES	:= $(addprefix $(SRCS_DIR)/,$(SOURCES))

# Objects/Output files

OBJS_DIR	= obj
#OBJECTS	:= $(patsubst %,%.o,$(addprefix $(OBJS_DIR)/,$(notdir $(SOURCES))))
OBJECTS	:= $(patsubst $(SRCS_DIR)/%,$(OBJS_DIR)/%.o,$(SOURCES))

# Dependencies

DEPS_DIR	= dep
DEPENDENCIES	:= $(patsubst %,%.d,$(addprefix $(DEPS_DIR)/,$(notdir $(SOURCES))))

DIRS	= 
DIRS	:= $(addprefix $(OBJS_DIR)/,$(DIRS))
