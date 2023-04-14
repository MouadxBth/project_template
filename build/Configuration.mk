# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Configuration.mk                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbouthai <mbouthai@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/13 00:47:20 by mbouthai          #+#    #+#              #
#    Updated: 2023/04/14 13:35:37 by mbouthai         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

define PROJECT_HEADER

> PROJECT HEADER < 

endef
export PROJECT_HEADER

CC	:= gcc

CFLAGS	:= -Wall -Werror -Wextra -I$(HEADERS_DIR)/

LDFLAGS	:= -fsanitize=address

CLEAN_DIR	:= rm -fd

CLEAN_FILES	:= rm -f
