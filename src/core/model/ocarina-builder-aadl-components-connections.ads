------------------------------------------------------------------------------
--                                                                          --
--                           OCARINA COMPONENTS                             --
--                                                                          --
--               OCARINA.BUILDER.AADL.COMPONENTS.CONNECTIONS                --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--       Copyright (C) 2009 Telecom ParisTech, 2010-2015 ESA & ISAE.        --
--                                                                          --
-- Ocarina  is free software; you can redistribute it and/or modify under   --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion. Ocarina is distributed in the hope that it will be useful, but     --
-- WITHOUT ANY WARRANTY; without even the implied warranty of               --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                     --
--                                                                          --
-- As a special exception under Section 7 of GPL version 3, you are granted --
-- additional permissions described in the GCC Runtime Library Exception,   --
-- version 3.1, as published by the Free Software Foundation.               --
--                                                                          --
-- You should have received a copy of the GNU General Public License and    --
-- a copy of the GCC Runtime Library Exception along with this program;     --
-- see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see    --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
--                 Ocarina is maintained by the TASTE project               --
--                      (taste-users@lists.tuxfamily.org)                   --
--                                                                          --
------------------------------------------------------------------------------

with Ocarina.ME_AADL;

package Ocarina.Builder.AADL.Components.Connections is

   function Add_Property_Association
     (Connection           : Node_Id;
      Property_Association : Node_Id) return Boolean;
   --  Add a property association to the connection
   --  declaration. Connection must reference a connection
   --  declaration. Property_Association references the property
   --  association. Return True if everything went right, else False.

   function Add_New_Connection
     (Loc           : Location;
      Name          : Node_Id;
      Comp_Impl     : Node_Id;
      Category      : Ocarina.ME_AADL.Connection_Type;
      Is_Refinement : Boolean := False;
      Is_Bidirect   : Boolean := False;
      Source        : Node_Id := No_Node;
      Destination   : Node_Id := No_Node;
      In_Modes      : Node_Id := No_Node) return Node_Id;
   --  Create and add a new connection into a component
   --  implementation. Loc is the location of the connection in the
   --  parsed text. Name references an identifier which contains the
   --  name of the connection, if any. Comp_Impl references the
   --  component implementation. Category is the type of the
   --  connection. Is_Refinement indicates wether the connection is a
   --  refinement or not. Source and Destination are the left and
   --  right memebers of the connection. In_Modes contains the list of
   --  the modes associated to the connection. Name can be No_Node, if
   --  the connection is not nammed. Return the Node_Id of the newly
   --  created connection if everything went right, else No_Node.

   function New_Connection
     (Loc           : Location;
      Name          : Node_Id;
      Category      : Ocarina.ME_AADL.Connection_Type;
      Is_Refinement : Boolean := False;
      Is_Bidirect   : Boolean := False;
      Source        : Node_Id := No_Node;
      Destination   : Node_Id := No_Node;
      In_Modes      : Node_Id := No_Node) return Node_Id;
   --  Create a new connection into a component implementation.
   --  Loc is the location of the connection in the parsed text.
   --  Name references an identifier which contains the name
   --  of the connection, if any. Category is the type of the
   --  connection. Is_Refinement indicates wether the connection is a
   --  refinement or not. Source and Destination are the left and
   --  right memebers of the connection. In_Modes contains the list of
   --  the modes associated to the connection. Name can be No_Node, if
   --  the connection is not nammed. Return the Node_Id of the newly
   --  created connection if everything went right, else No_Node.

end Ocarina.Builder.AADL.Components.Connections;
