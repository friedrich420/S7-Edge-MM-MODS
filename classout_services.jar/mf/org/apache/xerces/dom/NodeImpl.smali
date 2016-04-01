.class public abstract Lmf/org/apache/xerces/dom/NodeImpl;
.super Ljava/lang/Object;
.source "NodeImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lmf/org/w3c/dom/Node;
.implements Lmf/org/w3c/dom/NodeList;
.implements Lmf/org/w3c/dom/events/EventTarget;


# static fields
.field public static final DOCUMENT_POSITION_CONTAINS:S = 0x8s

.field public static final DOCUMENT_POSITION_DISCONNECTED:S = 0x1s

.field public static final DOCUMENT_POSITION_FOLLOWING:S = 0x4s

.field public static final DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC:S = 0x20s

.field public static final DOCUMENT_POSITION_IS_CONTAINED:S = 0x10s

.field public static final DOCUMENT_POSITION_PRECEDING:S = 0x2s

.field public static final ELEMENT_DEFINITION_NODE:S = 0x15s

.field protected static final FIRSTCHILD:S = 0x10s

.field protected static final HASSTRING:S = 0x80s

.field protected static final ID:S = 0x200s

.field protected static final IGNORABLEWS:S = 0x40s

.field protected static final NORMALIZED:S = 0x100s

.field protected static final OWNED:S = 0x8s

.field protected static final READONLY:S = 0x1s

.field protected static final SPECIFIED:S = 0x20s

.field protected static final SYNCCHILDREN:S = 0x4s

.field protected static final SYNCDATA:S = 0x2s

.field public static final TREE_POSITION_ANCESTOR:S = 0x4s

.field public static final TREE_POSITION_DESCENDANT:S = 0x8s

.field public static final TREE_POSITION_DISCONNECTED:S = 0x0s

.field public static final TREE_POSITION_EQUIVALENT:S = 0x10s

.field public static final TREE_POSITION_FOLLOWING:S = 0x2s

.field public static final TREE_POSITION_PRECEDING:S = 0x1s

.field public static final TREE_POSITION_SAME_NODE:S = 0x20s

.field static final serialVersionUID:J = -0x57a90af33c3441f0L


# instance fields
.field protected flags:S

.field protected ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .registers 2
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 177
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2007
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2008
    invoke-virtual {p0}, synchronizeData()V

    .line 2011
    :cond_9
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2013
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Lmf/org/w3c/dom/events/EventListener;
    .param p3, "useCapture"    # Z

    .prologue
    .line 709
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->addEventListener(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V

    .line 710
    return-void
.end method

.method public appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 3
    .param p1, "newChild"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method protected changed()V
    .registers 2

    .prologue
    .line 1870
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->changed()V

    .line 1871
    return-void
.end method

.method protected changes()I
    .registers 2

    .prologue
    .line 1880
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->changes()I

    move-result v0

    return v0
.end method

.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .registers 7
    .param p1, "deep"    # Z

    .prologue
    const/4 v3, 0x0

    .line 264
    invoke-virtual {p0}, needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 265
    invoke-virtual {p0}, synchronizeData()V

    .line 270
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_a .. :try_end_10} :catch_25

    .line 279
    .local v1, "newnode":Lmf/org/apache/xerces/dom/NodeImpl;
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    iput-object v2, v1, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 280
    invoke-virtual {v1, v3}, isOwned(Z)V

    .line 284
    invoke-virtual {v1, v3}, isReadOnly(Z)V

    .line 286
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    .line 287
    const/4 v3, 0x1

    .line 286
    invoke-virtual {v2, p0, v1, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    .line 289
    return-object v1

    .line 272
    .end local v1    # "newnode":Lmf/org/apache/xerces/dom/NodeImpl;
    :catch_25
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "**Internal Error**"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public compareDocumentPosition(Lmf/org/w3c/dom/Node;)S
    .registers 29
    .param p1, "other"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 973
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_9

    .line 974
    const/16 v24, 0x0

    .line 1230
    :goto_8
    return v24

    .line 977
    :cond_9
    if-eqz p1, :cond_2a

    move-object/from16 v0, p1

    instance-of v0, v0, Lmf/org/apache/xerces/dom/NodeImpl;

    move/from16 v24, v0

    if-nez v24, :cond_2a

    .line 980
    const-string/jumbo v24, "http://www.w3.org/dom/DOMTR"

    const-string v25, "NOT_SUPPORTED_ERR"

    const/16 v26, 0x0

    .line 979
    invoke-static/range {v24 .. v26}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 981
    .local v6, "msg":Ljava/lang/String;
    new-instance v24, Lmf/org/w3c/dom/DOMException;

    const/16 v25, 0x9

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v1, v6}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v24

    .line 986
    .end local v6    # "msg":Ljava/lang/String;
    :cond_2a
    invoke-virtual/range {p0 .. p0}, getNodeType()S

    move-result v24

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_65

    move-object/from16 v23, p0

    .line 987
    check-cast v23, Lmf/org/w3c/dom/Document;

    .line 990
    .local v23, "thisOwnerDoc":Lmf/org/w3c/dom/Document;
    :goto_3a
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v24

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6a

    move-object/from16 v15, p1

    .line 991
    check-cast v15, Lmf/org/w3c/dom/Document;

    .line 997
    .local v15, "otherOwnerDoc":Lmf/org/w3c/dom/Document;
    :goto_4a
    move-object/from16 v0, v23

    if-eq v0, v15, :cond_72

    .line 998
    if-eqz v23, :cond_72

    .line 999
    if-eqz v15, :cond_72

    .line 1001
    check-cast v15, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .end local v15    # "otherOwnerDoc":Lmf/org/w3c/dom/Document;
    invoke-virtual {v15}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getNodeNumber()I

    move-result v12

    .line 1002
    .local v12, "otherDocNum":I
    check-cast v23, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .end local v23    # "thisOwnerDoc":Lmf/org/w3c/dom/Document;
    invoke-virtual/range {v23 .. v23}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getNodeNumber()I

    move-result v20

    .line 1003
    .local v20, "thisDocNum":I
    move/from16 v0, v20

    if-le v12, v0, :cond_6f

    .line 1004
    const/16 v24, 0x25

    goto :goto_8

    .line 989
    .end local v12    # "otherDocNum":I
    .end local v20    # "thisDocNum":I
    :cond_65
    invoke-virtual/range {p0 .. p0}, getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v23

    .restart local v23    # "thisOwnerDoc":Lmf/org/w3c/dom/Document;
    goto :goto_3a

    .line 993
    :cond_6a
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v15

    .restart local v15    # "otherOwnerDoc":Lmf/org/w3c/dom/Document;
    goto :goto_4a

    .line 1008
    .end local v15    # "otherOwnerDoc":Lmf/org/w3c/dom/Document;
    .end local v23    # "thisOwnerDoc":Lmf/org/w3c/dom/Document;
    .restart local v12    # "otherDocNum":I
    .restart local v20    # "thisDocNum":I
    :cond_6f
    const/16 v24, 0x23

    goto :goto_8

    .line 1022
    .end local v12    # "otherDocNum":I
    .end local v20    # "thisDocNum":I
    .restart local v15    # "otherOwnerDoc":Lmf/org/w3c/dom/Document;
    .restart local v23    # "thisOwnerDoc":Lmf/org/w3c/dom/Document;
    :cond_72
    move-object/from16 v16, p0

    .line 1023
    .local v16, "thisAncestor":Lmf/org/w3c/dom/Node;
    move-object/from16 v8, p1

    .line 1025
    .local v8, "otherAncestor":Lmf/org/w3c/dom/Node;
    const/16 v19, 0x0

    .line 1026
    .local v19, "thisDepth":I
    const/4 v11, 0x0

    .line 1027
    .local v11, "otherDepth":I
    move-object/from16 v7, p0

    .local v7, "node":Lmf/org/w3c/dom/Node;
    :goto_7b
    if-nez v7, :cond_ab

    .line 1036
    move-object/from16 v7, p1

    :goto_7f
    if-nez v7, :cond_bc

    .line 1047
    invoke-interface/range {v16 .. v16}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v18

    .line 1048
    .local v18, "thisAncestorType":I
    invoke-interface {v8}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v10

    .line 1049
    .local v10, "otherAncestorType":I
    move-object/from16 v21, p0

    .line 1050
    .local v21, "thisNode":Lmf/org/w3c/dom/Node;
    move-object/from16 v13, p1

    .line 1054
    .local v13, "otherNode":Lmf/org/w3c/dom/Node;
    sparse-switch v18, :sswitch_data_22a

    .line 1126
    :cond_90
    :goto_90
    sparse-switch v10, :sswitch_data_23c

    .line 1161
    :cond_93
    :goto_93
    move-object/from16 v0, v16

    if-eq v0, v8, :cond_1c5

    .line 1163
    check-cast v16, Lmf/org/apache/xerces/dom/NodeImpl;

    .end local v16    # "thisAncestor":Lmf/org/w3c/dom/Node;
    invoke-virtual/range {v16 .. v16}, getNodeNumber()I

    move-result v17

    .line 1164
    .local v17, "thisAncestorNum":I
    check-cast v8, Lmf/org/apache/xerces/dom/NodeImpl;

    .end local v8    # "otherAncestor":Lmf/org/w3c/dom/Node;
    invoke-virtual {v8}, getNodeNumber()I

    move-result v9

    .line 1166
    .local v9, "otherAncestorNum":I
    move/from16 v0, v17

    if-le v0, v9, :cond_1c1

    .line 1167
    const/16 v24, 0x25

    goto/16 :goto_8

    .line 1028
    .end local v9    # "otherAncestorNum":I
    .end local v10    # "otherAncestorType":I
    .end local v13    # "otherNode":Lmf/org/w3c/dom/Node;
    .end local v17    # "thisAncestorNum":I
    .end local v18    # "thisAncestorType":I
    .end local v21    # "thisNode":Lmf/org/w3c/dom/Node;
    .restart local v8    # "otherAncestor":Lmf/org/w3c/dom/Node;
    .restart local v16    # "thisAncestor":Lmf/org/w3c/dom/Node;
    :cond_ab
    add-int/lit8 v19, v19, 0x1

    .line 1029
    move-object/from16 v0, p1

    if-ne v7, v0, :cond_b5

    .line 1031
    const/16 v24, 0xa

    goto/16 :goto_8

    .line 1033
    :cond_b5
    move-object/from16 v16, v7

    .line 1027
    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v7

    goto :goto_7b

    .line 1037
    :cond_bc
    add-int/lit8 v11, v11, 0x1

    .line 1038
    move-object/from16 v0, p0

    if-ne v7, v0, :cond_c6

    .line 1040
    const/16 v24, 0x14

    goto/16 :goto_8

    .line 1042
    :cond_c6
    move-object v8, v7

    .line 1036
    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v7

    goto :goto_7f

    .line 1057
    .restart local v10    # "otherAncestorType":I
    .restart local v13    # "otherNode":Lmf/org/w3c/dom/Node;
    .restart local v18    # "thisAncestorType":I
    .restart local v21    # "thisNode":Lmf/org/w3c/dom/Node;
    :sswitch_cc
    invoke-interface/range {v23 .. v23}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v3

    .line 1058
    .local v3, "container":Lmf/org/w3c/dom/DocumentType;
    if-ne v3, v8, :cond_d6

    .line 1059
    const/16 v24, 0xa

    .line 1058
    goto/16 :goto_8

    .line 1060
    :cond_d6
    sparse-switch v10, :sswitch_data_24e

    .line 1087
    move-object/from16 v16, v23

    move-object/from16 v21, v23

    .line 1088
    goto :goto_90

    .line 1063
    :sswitch_de
    move/from16 v0, v18

    if-eq v0, v10, :cond_ee

    .line 1065
    move/from16 v0, v18

    if-le v0, v10, :cond_ea

    .line 1066
    const/16 v24, 0x2

    goto/16 :goto_8

    :cond_ea
    const/16 v24, 0x4

    goto/16 :goto_8

    .line 1069
    :cond_ee
    const/16 v24, 0xc

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_10e

    .line 1071
    invoke-interface {v3}, Lmf/org/w3c/dom/DocumentType;->getNotations()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v24

    check-cast v24, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->precedes(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v24

    if-eqz v24, :cond_10a

    .line 1072
    const/16 v24, 0x22

    goto/16 :goto_8

    .line 1075
    :cond_10a
    const/16 v24, 0x24

    goto/16 :goto_8

    .line 1078
    :cond_10e
    invoke-interface {v3}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v24

    check-cast v24, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->precedes(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v24

    if-eqz v24, :cond_122

    .line 1079
    const/16 v24, 0x22

    goto/16 :goto_8

    .line 1082
    :cond_122
    const/16 v24, 0x24

    goto/16 :goto_8

    .line 1091
    .end local v3    # "container":Lmf/org/w3c/dom/DocumentType;
    :sswitch_126
    move-object/from16 v0, v23

    if-ne v13, v0, :cond_12e

    .line 1092
    const/16 v24, 0xa

    goto/16 :goto_8

    .line 1094
    :cond_12e
    if-eqz v23, :cond_90

    move-object/from16 v0, v23

    if-ne v0, v15, :cond_90

    .line 1095
    const/16 v24, 0x4

    goto/16 :goto_8

    :sswitch_138
    move-object/from16 v24, v16

    .line 1099
    check-cast v24, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v21

    .line 1100
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v10, v0, :cond_16c

    move-object/from16 v24, v8

    .line 1101
    check-cast v24, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v13

    .line 1102
    move-object/from16 v0, v21

    if-ne v13, v0, :cond_16c

    .line 1103
    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v24

    check-cast v24, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->precedes(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v24

    if-eqz v24, :cond_168

    .line 1104
    const/16 v24, 0x22

    goto/16 :goto_8

    .line 1107
    :cond_168
    const/16 v24, 0x24

    goto/16 :goto_8

    .line 1113
    :cond_16c
    const/16 v19, 0x0

    .line 1114
    move-object/from16 v7, v21

    :goto_170
    if-eqz v7, :cond_90

    .line 1115
    add-int/lit8 v19, v19, 0x1

    .line 1116
    if-ne v7, v13, :cond_17a

    .line 1119
    const/16 v24, 0xa

    goto/16 :goto_8

    .line 1122
    :cond_17a
    move-object/from16 v16, v7

    .line 1114
    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v7

    goto :goto_170

    .line 1129
    :sswitch_181
    invoke-interface/range {v23 .. v23}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v3

    .line 1130
    .restart local v3    # "container":Lmf/org/w3c/dom/DocumentType;
    move-object/from16 v0, p0

    if-ne v3, v0, :cond_18d

    const/16 v24, 0x14

    goto/16 :goto_8

    .line 1132
    :cond_18d
    move-object/from16 v8, v23

    move-object/from16 v13, v23

    .line 1133
    goto/16 :goto_93

    .line 1136
    .end local v3    # "container":Lmf/org/w3c/dom/DocumentType;
    :sswitch_193
    move-object/from16 v0, v21

    if-ne v0, v15, :cond_19b

    .line 1137
    const/16 v24, 0x14

    goto/16 :goto_8

    .line 1139
    :cond_19b
    if-eqz v15, :cond_93

    move-object/from16 v0, v23

    if-ne v0, v15, :cond_93

    .line 1140
    const/16 v24, 0x2

    goto/16 :goto_8

    .line 1144
    :sswitch_1a5
    const/4 v11, 0x0

    move-object/from16 v24, v8

    .line 1145
    check-cast v24, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v13

    .line 1146
    move-object v7, v13

    :goto_1af
    if-eqz v7, :cond_93

    .line 1147
    add-int/lit8 v11, v11, 0x1

    .line 1148
    move-object/from16 v0, v21

    if-ne v7, v0, :cond_1bb

    .line 1151
    const/16 v24, 0x14

    goto/16 :goto_8

    .line 1153
    :cond_1bb
    move-object v8, v7

    .line 1146
    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v7

    goto :goto_1af

    .line 1171
    .end local v8    # "otherAncestor":Lmf/org/w3c/dom/Node;
    .end local v16    # "thisAncestor":Lmf/org/w3c/dom/Node;
    .restart local v9    # "otherAncestorNum":I
    .restart local v17    # "thisAncestorNum":I
    :cond_1c1
    const/16 v24, 0x23

    goto/16 :goto_8

    .line 1180
    .end local v9    # "otherAncestorNum":I
    .end local v17    # "thisAncestorNum":I
    .restart local v8    # "otherAncestor":Lmf/org/w3c/dom/Node;
    .restart local v16    # "thisAncestor":Lmf/org/w3c/dom/Node;
    :cond_1c5
    move/from16 v0, v19

    if-le v0, v11, :cond_1df

    .line 1181
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1ca
    sub-int v24, v19, v11

    move/from16 v0, v24

    if-lt v5, v0, :cond_1d8

    .line 1186
    move-object/from16 v0, v21

    if-ne v0, v13, :cond_1f5

    .line 1188
    const/16 v24, 0x2

    goto/16 :goto_8

    .line 1182
    :cond_1d8
    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v21

    .line 1181
    add-int/lit8 v5, v5, 0x1

    goto :goto_1ca

    .line 1193
    .end local v5    # "i":I
    :cond_1df
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1e0
    sub-int v24, v11, v19

    move/from16 v0, v24

    if-lt v5, v0, :cond_1ee

    .line 1198
    move-object/from16 v0, v21

    if-ne v13, v0, :cond_1f5

    .line 1199
    const/16 v24, 0x4

    goto/16 :goto_8

    .line 1194
    :cond_1ee
    invoke-interface {v13}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v13

    .line 1193
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e0

    .line 1205
    :cond_1f5
    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v22

    .line 1206
    .local v22, "thisNodeP":Lmf/org/w3c/dom/Node;
    invoke-interface {v13}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v14

    .line 1207
    .local v14, "otherNodeP":Lmf/org/w3c/dom/Node;
    :goto_1fd
    move-object/from16 v0, v22

    if-ne v0, v14, :cond_20b

    .line 1218
    invoke-interface/range {v22 .. v22}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 1219
    .local v4, "current":Lmf/org/w3c/dom/Node;
    :goto_205
    if-nez v4, :cond_217

    .line 1230
    const/16 v24, 0x0

    goto/16 :goto_8

    .line 1208
    .end local v4    # "current":Lmf/org/w3c/dom/Node;
    :cond_20b
    move-object/from16 v21, v22

    .line 1209
    move-object v13, v14

    .line 1210
    invoke-interface/range {v22 .. v22}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v22

    .line 1211
    invoke-interface {v14}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v14

    goto :goto_1fd

    .line 1221
    .restart local v4    # "current":Lmf/org/w3c/dom/Node;
    :cond_217
    if-ne v4, v13, :cond_21d

    .line 1222
    const/16 v24, 0x2

    goto/16 :goto_8

    .line 1224
    :cond_21d
    move-object/from16 v0, v21

    if-ne v4, v0, :cond_225

    .line 1225
    const/16 v24, 0x4

    goto/16 :goto_8

    .line 1220
    :cond_225
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    goto :goto_205

    .line 1054
    :sswitch_data_22a
    .sparse-switch
        0x2 -> :sswitch_138
        0x6 -> :sswitch_cc
        0xa -> :sswitch_126
        0xc -> :sswitch_cc
    .end sparse-switch

    .line 1126
    :sswitch_data_23c
    .sparse-switch
        0x2 -> :sswitch_1a5
        0x6 -> :sswitch_181
        0xa -> :sswitch_193
        0xc -> :sswitch_181
    .end sparse-switch

    .line 1060
    :sswitch_data_24e
    .sparse-switch
        0x6 -> :sswitch_de
        0xc -> :sswitch_de
    .end sparse-switch
.end method

.method public compareTreePosition(Lmf/org/w3c/dom/Node;)S
    .registers 20
    .param p1, "other"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 803
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_9

    .line 804
    const/16 v17, 0x30

    .line 959
    :goto_8
    return v17

    .line 807
    :cond_9
    invoke-virtual/range {p0 .. p0}, getNodeType()S

    move-result v16

    .line 808
    .local v16, "thisType":S
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v10

    .line 811
    .local v10, "otherType":S
    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2d

    .line 812
    const/16 v17, 0xc

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2d

    .line 813
    const/16 v17, 0x6

    move/from16 v0, v17

    if-eq v10, v0, :cond_2d

    .line 814
    const/16 v17, 0xc

    move/from16 v0, v17

    if-ne v10, v0, :cond_30

    .line 815
    :cond_2d
    const/16 v17, 0x0

    goto :goto_8

    .line 826
    :cond_30
    move-object/from16 v11, p0

    .line 827
    .local v11, "thisAncestor":Lmf/org/w3c/dom/Node;
    move-object/from16 v5, p1

    .line 828
    .local v5, "otherAncestor":Lmf/org/w3c/dom/Node;
    const/4 v13, 0x0

    .line 829
    .local v13, "thisDepth":I
    const/4 v7, 0x0

    .line 830
    .local v7, "otherDepth":I
    move-object/from16 v4, p0

    .local v4, "node":Lmf/org/w3c/dom/Node;
    :goto_38
    if-nez v4, :cond_77

    .line 838
    move-object/from16 v4, p1

    :goto_3c
    if-nez v4, :cond_86

    .line 847
    move-object/from16 v14, p0

    .line 848
    .local v14, "thisNode":Lmf/org/w3c/dom/Node;
    move-object/from16 v8, p1

    .line 850
    .local v8, "otherNode":Lmf/org/w3c/dom/Node;
    invoke-interface {v11}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v12

    .line 851
    .local v12, "thisAncestorType":I
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v6

    .line 856
    .local v6, "otherAncestorType":I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v12, v0, :cond_58

    move-object/from16 v17, v11

    .line 857
    check-cast v17, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v14

    .line 859
    :cond_58
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v6, v0, :cond_66

    move-object/from16 v17, v5

    .line 860
    check-cast v17, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v8

    .line 865
    :cond_66
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v12, v0, :cond_96

    .line 866
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v6, v0, :cond_96

    .line 867
    if-ne v14, v8, :cond_96

    .line 868
    const/16 v17, 0x10

    goto :goto_8

    .line 831
    .end local v6    # "otherAncestorType":I
    .end local v8    # "otherNode":Lmf/org/w3c/dom/Node;
    .end local v12    # "thisAncestorType":I
    .end local v14    # "thisNode":Lmf/org/w3c/dom/Node;
    :cond_77
    add-int/lit8 v13, v13, 0x1

    .line 832
    move-object/from16 v0, p1

    if-ne v4, v0, :cond_80

    .line 834
    const/16 v17, 0x5

    goto :goto_8

    .line 835
    :cond_80
    move-object v11, v4

    .line 830
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    goto :goto_38

    .line 839
    :cond_86
    add-int/lit8 v7, v7, 0x1

    .line 840
    move-object/from16 v0, p0

    if-ne v4, v0, :cond_90

    .line 842
    const/16 v17, 0xa

    goto/16 :goto_8

    .line 843
    :cond_90
    move-object v5, v4

    .line 838
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    goto :goto_3c

    .line 875
    .restart local v6    # "otherAncestorType":I
    .restart local v8    # "otherNode":Lmf/org/w3c/dom/Node;
    .restart local v12    # "thisAncestorType":I
    .restart local v14    # "thisNode":Lmf/org/w3c/dom/Node;
    :cond_96
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v12, v0, :cond_a0

    .line 876
    const/4 v13, 0x0

    .line 877
    move-object v4, v14

    :goto_9e
    if-nez v4, :cond_b0

    .line 890
    :cond_a0
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v6, v0, :cond_aa

    .line 891
    const/4 v7, 0x0

    .line 892
    move-object v4, v8

    :goto_a8
    if-nez v4, :cond_be

    .line 904
    :cond_aa
    if-eq v11, v5, :cond_cc

    .line 905
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 878
    :cond_b0
    add-int/lit8 v13, v13, 0x1

    .line 879
    if-ne v4, v8, :cond_b8

    .line 882
    const/16 v17, 0x1

    goto/16 :goto_8

    .line 884
    :cond_b8
    move-object v11, v4

    .line 877
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    goto :goto_9e

    .line 893
    :cond_be
    add-int/lit8 v7, v7, 0x1

    .line 894
    if-ne v4, v14, :cond_c6

    .line 897
    const/16 v17, 0x2

    goto/16 :goto_8

    .line 898
    :cond_c6
    move-object v5, v4

    .line 892
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    goto :goto_a8

    .line 911
    :cond_cc
    if-le v13, v7, :cond_e2

    .line 912
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_cf
    sub-int v17, v13, v7

    move/from16 v0, v17

    if-lt v3, v0, :cond_db

    .line 917
    if-ne v14, v8, :cond_f6

    .line 918
    const/16 v17, 0x1

    goto/16 :goto_8

    .line 913
    :cond_db
    invoke-interface {v14}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v14

    .line 912
    add-int/lit8 v3, v3, 0x1

    goto :goto_cf

    .line 922
    .end local v3    # "i":I
    :cond_e2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_e3
    sub-int v17, v7, v13

    move/from16 v0, v17

    if-lt v3, v0, :cond_ef

    .line 927
    if-ne v8, v14, :cond_f6

    .line 928
    const/16 v17, 0x2

    goto/16 :goto_8

    .line 923
    :cond_ef
    invoke-interface {v8}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v8

    .line 922
    add-int/lit8 v3, v3, 0x1

    goto :goto_e3

    .line 934
    :cond_f6
    invoke-interface {v14}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v15

    .line 935
    .local v15, "thisNodeP":Lmf/org/w3c/dom/Node;
    invoke-interface {v8}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v9

    .line 936
    .local v9, "otherNodeP":Lmf/org/w3c/dom/Node;
    :goto_fe
    if-ne v15, v9, :cond_10a

    .line 947
    invoke-interface {v15}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 948
    .local v2, "current":Lmf/org/w3c/dom/Node;
    :goto_104
    if-nez v2, :cond_115

    .line 959
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 937
    .end local v2    # "current":Lmf/org/w3c/dom/Node;
    :cond_10a
    move-object v14, v15

    .line 938
    move-object v8, v9

    .line 939
    invoke-interface {v15}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v15

    .line 940
    invoke-interface {v9}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v9

    goto :goto_fe

    .line 950
    .restart local v2    # "current":Lmf/org/w3c/dom/Node;
    :cond_115
    if-ne v2, v8, :cond_11b

    .line 951
    const/16 v17, 0x1

    goto/16 :goto_8

    .line 953
    :cond_11b
    if-ne v2, v14, :cond_121

    .line 954
    const/16 v17, 0x2

    goto/16 :goto_8

    .line 949
    :cond_121
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_104
.end method

.method public dispatchEvent(Lmf/org/w3c/dom/events/Event;)Z
    .registers 3
    .param p1, "event"    # Lmf/org/w3c/dom/events/Event;

    .prologue
    .line 720
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->dispatchEvent(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/w3c/dom/events/Event;)Z

    move-result v0

    return v0
.end method

.method public getAttributes()Lmf/org/w3c/dom/NamedNodeMap;
    .registers 2

    .prologue
    .line 386
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 752
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildNodes()Lmf/org/w3c/dom/NodeList;
    .registers 1

    .prologue
    .line 425
    return-object p0
.end method

.method protected getContainer()Lmf/org/w3c/dom/Node;
    .registers 2

    .prologue
    .line 1897
    const/4 v0, 0x0

    return-object v0
.end method

.method getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 5
    .param p1, "currentNode"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 1590
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1591
    .local v0, "parent":Lmf/org/w3c/dom/Node;
    :goto_4
    if-nez v0, :cond_8

    .line 1598
    const/4 v0, 0x0

    .end local v0    # "parent":Lmf/org/w3c/dom/Node;
    :cond_7
    return-object v0

    .line 1592
    .restart local v0    # "parent":Lmf/org/w3c/dom/Node;
    :cond_8
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    .line 1593
    .local v1, "type":S
    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    .line 1596
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_4
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 1752
    invoke-virtual {p0, p1, p2}, isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .end local p0    # "this":Lmf/org/apache/xerces/dom/NodeImpl;
    :goto_6
    return-object p0

    .restart local p0    # "this":Lmf/org/apache/xerces/dom/NodeImpl;
    :cond_7
    const/4 p0, 0x0

    goto :goto_6
.end method

.method public getFirstChild()Lmf/org/w3c/dom/Node;
    .registers 2

    .prologue
    .line 434
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastChild()Lmf/org/w3c/dom/Node;
    .registers 2

    .prologue
    .line 443
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 699
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 634
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextSibling()Lmf/org/w3c/dom/Node;
    .registers 2

    .prologue
    .line 366
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNodeName()Ljava/lang/String;
.end method

.method protected getNodeNumber()I
    .registers 3

    .prologue
    .line 342
    invoke-virtual {p0}, getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 343
    .local v0, "cd":Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getNodeNumber(Lmf/org/w3c/dom/Node;)I

    move-result v1

    .line 344
    .local v1, "nodeNumber":I
    return v1
.end method

.method public abstract getNodeType()S
.end method

.method public getNodeValue()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerDocument()Lmf/org/w3c/dom/Document;
    .registers 2

    .prologue
    .line 301
    invoke-virtual {p0}, isOwned()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 302
    iget-object v0, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    .line 304
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v0, Lmf/org/w3c/dom/Document;

    goto :goto_c
.end method

.method public getParentNode()Lmf/org/w3c/dom/Node;
    .registers 2

    .prologue
    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 653
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousSibling()Lmf/org/w3c/dom/Node;
    .registers 2

    .prologue
    .line 371
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadOnly()Z
    .registers 2

    .prologue
    .line 1828
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1829
    invoke-virtual {p0}, synchronizeData()V

    .line 1831
    :cond_9
    invoke-virtual {p0}, isReadOnly()Z

    move-result v0

    return v0
.end method

.method public getTextContent()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1298
    invoke-virtual {p0}, getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTextContent(Ljava/lang/StringBuffer;)V
    .registers 3
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1303
    invoke-virtual {p0}, getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 1304
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 1305
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1307
    :cond_9
    return-void
.end method

.method public getUserData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1856
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getUserData(Lmf/org/apache/xerces/dom/NodeImpl;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1784
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getUserData(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getUserDataRecord()Ljava/util/Hashtable;
    .registers 2

    .prologue
    .line 1788
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getUserDataRecord(Lmf/org/w3c/dom/Node;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public hasAttributes()Z
    .registers 2

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .registers 2

    .prologue
    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method final hasStringValue(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 1967
    if-eqz p1, :cond_a

    iget-short v0, p0, flags:S

    or-int/lit16 v0, v0, 0x80

    :goto_6
    int-to-short v0, v0

    iput-short v0, p0, flags:S

    .line 1968
    return-void

    .line 1967
    :cond_a
    iget-short v0, p0, flags:S

    and-int/lit16 v0, v0, -0x81

    goto :goto_6
.end method

.method final hasStringValue()Z
    .registers 2

    .prologue
    .line 1963
    iget-short v0, p0, flags:S

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 8
    .param p1, "newChild"    # Lmf/org/w3c/dom/Node;
    .param p2, "refChild"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 479
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/4 v1, 0x3

    .line 480
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    .line 481
    const-string v3, "HIERARCHY_REQUEST_ERR"

    const/4 v4, 0x0

    .line 480
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 479
    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method final internalIsIgnorableWhitespace()Z
    .registers 2

    .prologue
    .line 1955
    iget-short v0, p0, flags:S

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .registers 13
    .param p1, "namespaceURI"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1392
    invoke-virtual {p0}, getNodeType()S

    move-result v5

    .line 1393
    .local v5, "type":S
    packed-switch v5, :pswitch_data_88

    .line 1441
    :pswitch_9
    invoke-virtual {p0, p0}, getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1442
    .local v0, "ancestor":Lmf/org/apache/xerces/dom/NodeImpl;
    if-eqz v0, :cond_86

    .line 1443
    invoke-virtual {v0, p1}, isDefaultNamespace(Ljava/lang/String;)Z

    move-result v7

    .line 1445
    .end local v0    # "ancestor":Lmf/org/apache/xerces/dom/NodeImpl;
    .end local p0    # "this":Lmf/org/apache/xerces/dom/NodeImpl;
    :cond_15
    :goto_15
    return v7

    .line 1395
    .restart local p0    # "this":Lmf/org/apache/xerces/dom/NodeImpl;
    :pswitch_16
    invoke-virtual {p0}, getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 1396
    .local v3, "namespace":Ljava/lang/String;
    invoke-virtual {p0}, getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 1399
    .local v4, "prefix":Ljava/lang/String;
    if-eqz v4, :cond_26

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_31

    .line 1400
    :cond_26
    if-nez p1, :cond_2c

    .line 1401
    if-eq v3, p1, :cond_15

    move v7, v8

    goto :goto_15

    .line 1403
    :cond_2c
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_15

    .line 1405
    :cond_31
    invoke-virtual {p0}, hasAttributes()Z

    move-result v9

    if-eqz v9, :cond_57

    move-object v2, p0

    .line 1406
    check-cast v2, Lmf/org/apache/xerces/dom/ElementImpl;

    .line 1407
    .local v2, "elem":Lmf/org/apache/xerces/dom/ElementImpl;
    const-string/jumbo v9, "http://www.w3.org/2000/xmlns/"

    const-string/jumbo v10, "xmlns"

    invoke-virtual {v2, v9, v10}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1408
    .local v1, "attr":Lmf/org/apache/xerces/dom/NodeImpl;
    if-eqz v1, :cond_57

    .line 1409
    invoke-virtual {v1}, getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 1410
    .local v6, "value":Ljava/lang/String;
    if-nez p1, :cond_52

    .line 1411
    if-eq v3, v6, :cond_15

    move v7, v8

    goto :goto_15

    .line 1413
    :cond_52
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_15

    .line 1417
    .end local v1    # "attr":Lmf/org/apache/xerces/dom/NodeImpl;
    .end local v2    # "elem":Lmf/org/apache/xerces/dom/ElementImpl;
    .end local v6    # "value":Ljava/lang/String;
    :cond_57
    invoke-virtual {p0, p0}, getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1418
    .restart local v0    # "ancestor":Lmf/org/apache/xerces/dom/NodeImpl;
    if-eqz v0, :cond_64

    .line 1419
    invoke-virtual {v0, p1}, isDefaultNamespace(Ljava/lang/String;)Z

    move-result v7

    goto :goto_15

    :cond_64
    move v7, v8

    .line 1421
    goto :goto_15

    .line 1424
    .end local v0    # "ancestor":Lmf/org/apache/xerces/dom/NodeImpl;
    .end local v3    # "namespace":Ljava/lang/String;
    .end local v4    # "prefix":Ljava/lang/String;
    :pswitch_66
    check-cast p0, Lmf/org/w3c/dom/Document;

    .end local p0    # "this":Lmf/org/apache/xerces/dom/NodeImpl;
    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v7

    check-cast v7, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v7, p1}, isDefaultNamespace(Ljava/lang/String;)Z

    move-result v7

    goto :goto_15

    .restart local p0    # "this":Lmf/org/apache/xerces/dom/NodeImpl;
    :pswitch_73
    move v7, v8

    .line 1432
    goto :goto_15

    .line 1434
    :pswitch_75
    iget-object v9, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v9}, getNodeType()S

    move-result v9

    if-ne v9, v7, :cond_84

    .line 1435
    iget-object v7, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v7, p1}, isDefaultNamespace(Ljava/lang/String;)Z

    move-result v7

    goto :goto_15

    :cond_84
    move v7, v8

    .line 1438
    goto :goto_15

    .restart local v0    # "ancestor":Lmf/org/apache/xerces/dom/NodeImpl;
    :cond_86
    move v7, v8

    .line 1445
    goto :goto_15

    .line 1393
    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_16
        :pswitch_75
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_73
        :pswitch_9
        :pswitch_9
        :pswitch_66
        :pswitch_73
        :pswitch_73
        :pswitch_73
    .end packed-switch
.end method

.method public isEqualNode(Lmf/org/w3c/dom/Node;)Z
    .registers 6
    .param p1, "arg"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1689
    if-ne p1, p0, :cond_5

    .line 1743
    :cond_4
    :goto_4
    return v0

    .line 1692
    :cond_5
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    invoke-virtual {p0}, getNodeType()S

    move-result v3

    if-eq v2, v3, :cond_11

    move v0, v1

    .line 1693
    goto :goto_4

    .line 1697
    :cond_11
    invoke-virtual {p0}, getNodeName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 1698
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    move v0, v1

    .line 1699
    goto :goto_4

    .line 1702
    :cond_1f
    invoke-virtual {p0}, getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    move v0, v1

    .line 1703
    goto :goto_4

    .line 1706
    :cond_2f
    invoke-virtual {p0}, getLocalName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3d

    .line 1707
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    move v0, v1

    .line 1708
    goto :goto_4

    .line 1711
    :cond_3d
    invoke-virtual {p0}, getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    move v0, v1

    .line 1712
    goto :goto_4

    .line 1715
    :cond_4d
    invoke-virtual {p0}, getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5b

    .line 1716
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6b

    move v0, v1

    .line 1717
    goto :goto_4

    .line 1720
    :cond_5b
    invoke-virtual {p0}, getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    move v0, v1

    .line 1721
    goto :goto_4

    .line 1724
    :cond_6b
    invoke-virtual {p0}, getPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_79

    .line 1725
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8a

    move v0, v1

    .line 1726
    goto :goto_4

    .line 1729
    :cond_79
    invoke-virtual {p0}, getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8a

    move v0, v1

    .line 1730
    goto/16 :goto_4

    .line 1733
    :cond_8a
    invoke-virtual {p0}, getNodeValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_99

    .line 1734
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 1735
    goto/16 :goto_4

    .line 1738
    :cond_99
    invoke-virtual {p0}, getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1739
    goto/16 :goto_4
.end method

.method final isFirstChild(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 1942
    if-eqz p1, :cond_a

    iget-short v0, p0, flags:S

    or-int/lit8 v0, v0, 0x10

    :goto_6
    int-to-short v0, v0

    iput-short v0, p0, flags:S

    .line 1943
    return-void

    .line 1942
    :cond_a
    iget-short v0, p0, flags:S

    and-int/lit8 v0, v0, -0x11

    goto :goto_6
.end method

.method final isFirstChild()Z
    .registers 2

    .prologue
    .line 1938
    iget-short v0, p0, flags:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final isIdAttribute(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 1987
    if-eqz p1, :cond_a

    iget-short v0, p0, flags:S

    or-int/lit16 v0, v0, 0x200

    :goto_6
    int-to-short v0, v0

    iput-short v0, p0, flags:S

    .line 1988
    return-void

    .line 1987
    :cond_a
    iget-short v0, p0, flags:S

    and-int/lit16 v0, v0, -0x201

    goto :goto_6
.end method

.method final isIdAttribute()Z
    .registers 2

    .prologue
    .line 1983
    iget-short v0, p0, flags:S

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final isIgnorableWhitespace(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 1959
    if-eqz p1, :cond_a

    iget-short v0, p0, flags:S

    or-int/lit8 v0, v0, 0x40

    :goto_6
    int-to-short v0, v0

    iput-short v0, p0, flags:S

    .line 1960
    return-void

    .line 1959
    :cond_a
    iget-short v0, p0, flags:S

    and-int/lit8 v0, v0, -0x41

    goto :goto_6
.end method

.method final isNormalized(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 1976
    if-nez p1, :cond_12

    invoke-virtual {p0}, isNormalized()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eqz v0, :cond_12

    .line 1977
    iget-object v0, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, isNormalized(Z)V

    .line 1979
    :cond_12
    if-eqz p1, :cond_1c

    iget-short v0, p0, flags:S

    or-int/lit16 v0, v0, 0x100

    :goto_18
    int-to-short v0, v0

    iput-short v0, p0, flags:S

    .line 1980
    return-void

    .line 1979
    :cond_1c
    iget-short v0, p0, flags:S

    and-int/lit16 v0, v0, -0x101

    goto :goto_18
.end method

.method final isNormalized()Z
    .registers 2

    .prologue
    .line 1971
    iget-short v0, p0, flags:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final isOwned(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 1934
    if-eqz p1, :cond_a

    iget-short v0, p0, flags:S

    or-int/lit8 v0, v0, 0x8

    :goto_6
    int-to-short v0, v0

    iput-short v0, p0, flags:S

    .line 1935
    return-void

    .line 1934
    :cond_a
    iget-short v0, p0, flags:S

    and-int/lit8 v0, v0, -0x9

    goto :goto_6
.end method

.method final isOwned()Z
    .registers 2

    .prologue
    .line 1930
    iget-short v0, p0, flags:S

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final isReadOnly(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 1910
    if-eqz p1, :cond_a

    iget-short v0, p0, flags:S

    or-int/lit8 v0, v0, 0x1

    :goto_6
    int-to-short v0, v0

    iput-short v0, p0, flags:S

    .line 1911
    return-void

    .line 1910
    :cond_a
    iget-short v0, p0, flags:S

    and-int/lit8 v0, v0, -0x2

    goto :goto_6
.end method

.method final isReadOnly()Z
    .registers 2

    .prologue
    .line 1906
    iget-short v0, p0, flags:S

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isSameNode(Lmf/org/w3c/dom/Node;)Z
    .registers 3
    .param p1, "other"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 1375
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method final isSpecified(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 1950
    if-eqz p1, :cond_a

    iget-short v0, p0, flags:S

    or-int/lit8 v0, v0, 0x20

    :goto_6
    int-to-short v0, v0

    iput-short v0, p0, flags:S

    .line 1951
    return-void

    .line 1950
    :cond_a
    iget-short v0, p0, flags:S

    and-int/lit8 v0, v0, -0x21

    goto :goto_6
.end method

.method final isSpecified()Z
    .registers 2

    .prologue
    .line 1946
    iget-short v0, p0, flags:S

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 611
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmf/org/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public item(I)Lmf/org/w3c/dom/Node;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 564
    const/4 v0, 0x0

    return-object v0
.end method

.method lookupNamespacePrefix(Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Ljava/lang/String;
    .registers 16
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "el"    # Lmf/org/apache/xerces/dom/ElementImpl;

    .prologue
    .line 1602
    invoke-virtual {p0}, getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    .line 1605
    .local v8, "namespace":Ljava/lang/String;
    invoke-virtual {p0}, getPrefix()Ljava/lang/String;

    move-result-object v9

    .line 1607
    .local v9, "prefix":Ljava/lang/String;
    if-eqz v8, :cond_1f

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 1608
    if-eqz v9, :cond_1f

    .line 1609
    invoke-virtual {p2, v9}, Lmf/org/apache/xerces/dom/ElementImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1610
    .local v3, "foundNamespace":Ljava/lang/String;
    if-eqz v3, :cond_1f

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 1646
    .end local v3    # "foundNamespace":Ljava/lang/String;
    .end local v9    # "prefix":Ljava/lang/String;
    :goto_1e
    return-object v9

    .line 1616
    .restart local v9    # "prefix":Ljava/lang/String;
    :cond_1f
    invoke-virtual {p0}, hasAttributes()Z

    move-result v11

    if-eqz v11, :cond_30

    .line 1617
    invoke-virtual {p0}, getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 1618
    .local v7, "map":Lmf/org/w3c/dom/NamedNodeMap;
    invoke-interface {v7}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    .line 1619
    .local v5, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2e
    if-lt v4, v5, :cond_3d

    .line 1641
    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v7    # "map":Lmf/org/w3c/dom/NamedNodeMap;
    :cond_30
    invoke-virtual {p0, p0}, getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1643
    .local v0, "ancestor":Lmf/org/apache/xerces/dom/NodeImpl;
    if-eqz v0, :cond_8b

    .line 1644
    invoke-virtual {v0, p1, p2}, lookupNamespacePrefix(Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1e

    .line 1620
    .end local v0    # "ancestor":Lmf/org/apache/xerces/dom/NodeImpl;
    .restart local v4    # "i":I
    .restart local v5    # "length":I
    .restart local v7    # "map":Lmf/org/w3c/dom/NamedNodeMap;
    :cond_3d
    invoke-interface {v7, v4}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1621
    .local v1, "attr":Lmf/org/w3c/dom/Node;
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 1622
    .local v2, "attrPrefix":Ljava/lang/String;
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 1623
    .local v10, "value":Ljava/lang/String;
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    .line 1624
    if-eqz v8, :cond_88

    const-string/jumbo v11, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_88

    .line 1626
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "xmlns"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_76

    .line 1627
    if-eqz v2, :cond_88

    const-string/jumbo v11, "xmlns"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_88

    .line 1628
    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_88

    .line 1630
    :cond_76
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    .line 1631
    .local v6, "localname":Ljava/lang/String;
    invoke-virtual {p2, v6}, Lmf/org/apache/xerces/dom/ElementImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1632
    .restart local v3    # "foundNamespace":Ljava/lang/String;
    if-eqz v3, :cond_88

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_88

    move-object v9, v6

    .line 1633
    goto :goto_1e

    .line 1619
    .end local v3    # "foundNamespace":Ljava/lang/String;
    .end local v6    # "localname":Ljava/lang/String;
    :cond_88
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 1646
    .end local v1    # "attr":Lmf/org/w3c/dom/Node;
    .end local v2    # "attrPrefix":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v7    # "map":Lmf/org/w3c/dom/NamedNodeMap;
    .end local v10    # "value":Ljava/lang/String;
    .restart local v0    # "ancestor":Lmf/org/apache/xerces/dom/NodeImpl;
    :cond_8b
    const/4 v9, 0x0

    goto :goto_1e
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "specifiedPrefix"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 1514
    invoke-virtual {p0}, getNodeType()S

    move-result v8

    .line 1515
    .local v8, "type":S
    packed-switch v8, :pswitch_data_c4

    .line 1579
    :pswitch_8
    invoke-virtual {p0, p0}, getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1580
    .local v0, "ancestor":Lmf/org/apache/xerces/dom/NodeImpl;
    if-eqz v0, :cond_14

    .line 1581
    invoke-virtual {v0, p1}, lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1583
    .end local v0    # "ancestor":Lmf/org/apache/xerces/dom/NodeImpl;
    .end local p0    # "this":Lmf/org/apache/xerces/dom/NodeImpl;
    :cond_14
    :goto_14
    :pswitch_14
    return-object v10

    .line 1518
    .restart local p0    # "this":Lmf/org/apache/xerces/dom/NodeImpl;
    :pswitch_15
    invoke-virtual {p0}, getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    .line 1519
    .local v6, "namespace":Ljava/lang/String;
    invoke-virtual {p0}, getPrefix()Ljava/lang/String;

    move-result-object v7

    .line 1520
    .local v7, "prefix":Ljava/lang/String;
    if-eqz v6, :cond_2f

    .line 1522
    if-nez p1, :cond_25

    if-ne v7, p1, :cond_25

    move-object v10, v6

    .line 1524
    goto :goto_14

    .line 1525
    :cond_25
    if-eqz v7, :cond_2f

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2f

    move-object v10, v6

    .line 1527
    goto :goto_14

    .line 1530
    :cond_2f
    invoke-virtual {p0}, hasAttributes()Z

    move-result v11

    if-eqz v11, :cond_40

    .line 1531
    invoke-virtual {p0}, getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v5

    .line 1532
    .local v5, "map":Lmf/org/w3c/dom/NamedNodeMap;
    invoke-interface {v5}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    .line 1533
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3e
    if-lt v3, v4, :cond_4d

    .line 1553
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "map":Lmf/org/w3c/dom/NamedNodeMap;
    :cond_40
    invoke-virtual {p0, p0}, getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1554
    .restart local v0    # "ancestor":Lmf/org/apache/xerces/dom/NodeImpl;
    if-eqz v0, :cond_14

    .line 1555
    invoke-virtual {v0, p1}, lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_14

    .line 1534
    .end local v0    # "ancestor":Lmf/org/apache/xerces/dom/NodeImpl;
    .restart local v3    # "i":I
    .restart local v4    # "length":I
    .restart local v5    # "map":Lmf/org/w3c/dom/NamedNodeMap;
    :cond_4d
    invoke-interface {v5, v3}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1535
    .local v1, "attr":Lmf/org/w3c/dom/Node;
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 1536
    .local v2, "attrPrefix":Ljava/lang/String;
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 1537
    .local v9, "value":Ljava/lang/String;
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    .line 1538
    if-eqz v6, :cond_a1

    const-string/jumbo v11, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a1

    .line 1540
    if-nez p1, :cond_81

    .line 1541
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "xmlns"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_81

    .line 1543
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_7f

    .end local v9    # "value":Ljava/lang/String;
    :goto_7d
    move-object v10, v9

    goto :goto_14

    .restart local v9    # "value":Ljava/lang/String;
    :cond_7f
    move-object v9, v10

    goto :goto_7d

    .line 1544
    :cond_81
    if-eqz v2, :cond_a1

    .line 1545
    const-string/jumbo v11, "xmlns"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a1

    .line 1546
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a1

    .line 1548
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_9f

    .end local v9    # "value":Ljava/lang/String;
    :goto_9c
    move-object v10, v9

    goto/16 :goto_14

    .restart local v9    # "value":Ljava/lang/String;
    :cond_9f
    move-object v9, v10

    goto :goto_9c

    .line 1533
    :cond_a1
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 1563
    .end local v1    # "attr":Lmf/org/w3c/dom/Node;
    .end local v2    # "attrPrefix":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "map":Lmf/org/w3c/dom/NamedNodeMap;
    .end local v6    # "namespace":Ljava/lang/String;
    .end local v7    # "prefix":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :pswitch_a4
    check-cast p0, Lmf/org/w3c/dom/Document;

    .end local p0    # "this":Lmf/org/apache/xerces/dom/NodeImpl;
    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v10, p1}, lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_14

    .line 1572
    .restart local p0    # "this":Lmf/org/apache/xerces/dom/NodeImpl;
    :pswitch_b2
    iget-object v11, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v11}, getNodeType()S

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_14

    .line 1573
    iget-object v10, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v10, p1}, lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_14

    .line 1515
    nop

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_15
        :pswitch_b2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_14
        :pswitch_8
        :pswitch_8
        :pswitch_a4
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "namespaceURI"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1466
    if-nez p1, :cond_4

    .line 1499
    .end local p0    # "this":Lmf/org/apache/xerces/dom/NodeImpl;
    :cond_3
    :goto_3
    :pswitch_3
    return-object v2

    .line 1470
    .restart local p0    # "this":Lmf/org/apache/xerces/dom/NodeImpl;
    :cond_4
    invoke-virtual {p0}, getNodeType()S

    move-result v1

    .line 1472
    .local v1, "type":S
    packed-switch v1, :pswitch_data_40

    .line 1495
    :pswitch_b
    invoke-virtual {p0, p0}, getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1496
    .local v0, "ancestor":Lmf/org/apache/xerces/dom/NodeImpl;
    if-eqz v0, :cond_3

    .line 1497
    invoke-virtual {v0, p1}, lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1474
    .end local v0    # "ancestor":Lmf/org/apache/xerces/dom/NodeImpl;
    :pswitch_18
    invoke-virtual {p0}, getNamespaceURI()Ljava/lang/String;

    move-object v2, p0

    .line 1475
    check-cast v2, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {p0, p1, v2}, lookupNamespacePrefix(Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1478
    :pswitch_23
    check-cast p0, Lmf/org/w3c/dom/Document;

    .end local p0    # "this":Lmf/org/apache/xerces/dom/NodeImpl;
    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2, p1}, lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1488
    .restart local p0    # "this":Lmf/org/apache/xerces/dom/NodeImpl;
    :pswitch_30
    iget-object v3, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v3}, getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1489
    iget-object v2, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2, p1}, lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1472
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_18
        :pswitch_30
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_3
        :pswitch_b
        :pswitch_b
        :pswitch_23
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final needsSyncChildren(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 1926
    if-eqz p1, :cond_a

    iget-short v0, p0, flags:S

    or-int/lit8 v0, v0, 0x4

    :goto_6
    int-to-short v0, v0

    iput-short v0, p0, flags:S

    .line 1927
    return-void

    .line 1926
    :cond_a
    iget-short v0, p0, flags:S

    and-int/lit8 v0, v0, -0x5

    goto :goto_6
.end method

.method final needsSyncChildren()Z
    .registers 2

    .prologue
    .line 1922
    iget-short v0, p0, flags:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final needsSyncData(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 1918
    if-eqz p1, :cond_a

    iget-short v0, p0, flags:S

    or-int/lit8 v0, v0, 0x2

    :goto_6
    int-to-short v0, v0

    iput-short v0, p0, flags:S

    .line 1919
    return-void

    .line 1918
    :cond_a
    iget-short v0, p0, flags:S

    and-int/lit8 v0, v0, -0x3

    goto :goto_6
.end method

.method final needsSyncData()Z
    .registers 2

    .prologue
    .line 1914
    iget-short v0, p0, flags:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public normalize()V
    .registers 1

    .prologue
    .line 592
    return-void
.end method

.method ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .registers 2

    .prologue
    .line 315
    invoke-virtual {p0}, isOwned()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 316
    iget-object v0, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    .line 318
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    goto :goto_c
.end method

.method parentNode()Lmf/org/apache/xerces/dom/NodeImpl;
    .registers 2

    .prologue
    .line 361
    const/4 v0, 0x0

    return-object v0
.end method

.method previousSibling()Lmf/org/apache/xerces/dom/ChildNode;
    .registers 2

    .prologue
    .line 375
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 7
    .param p1, "oldChild"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 501
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x8

    .line 502
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    .line 503
    const-string v3, "NOT_FOUND_ERR"

    const/4 v4, 0x0

    .line 502
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public removeEventListener(Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Lmf/org/w3c/dom/events/EventListener;
    .param p3, "useCapture"    # Z

    .prologue
    .line 715
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeEventListener(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V

    .line 716
    return-void
.end method

.method public replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 8
    .param p1, "newChild"    # Lmf/org/w3c/dom/Node;
    .param p2, "oldChild"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 532
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/4 v1, 0x3

    .line 533
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    .line 534
    const-string v3, "HIERARCHY_REQUEST_ERR"

    const/4 v4, 0x0

    .line 533
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 532
    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "x"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 213
    return-void
.end method

.method protected setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .registers 3
    .param p1, "doc"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .prologue
    .line 327
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 328
    invoke-virtual {p0}, synchronizeData()V

    .line 332
    :cond_9
    invoke-virtual {p0}, isOwned()Z

    move-result v0

    if-nez v0, :cond_11

    .line 333
    iput-object p1, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 335
    :cond_11
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 680
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0xe

    .line 681
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    .line 682
    const-string v3, "NAMESPACE_ERR"

    const/4 v4, 0x0

    .line 681
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 680
    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setReadOnly(ZZ)V
    .registers 4
    .param p1, "readOnly"    # Z
    .param p2, "deep"    # Z

    .prologue
    .line 1815
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1816
    invoke-virtual {p0}, synchronizeData()V

    .line 1818
    :cond_9
    invoke-virtual {p0, p1}, isReadOnly(Z)V

    .line 1820
    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .registers 2
    .param p1, "textContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1356
    invoke-virtual {p0, p1}, setNodeValue(Ljava/lang/String;)V

    .line 1357
    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "handler"    # Lmf/org/w3c/dom/UserDataHandler;

    .prologue
    .line 1771
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserData(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setUserData(Ljava/lang/Object;)V
    .registers 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 1848
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/Object;)V

    .line 1849
    return-void
.end method

.method protected synchronizeData()V
    .registers 2

    .prologue
    .line 1889
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, needsSyncData(Z)V

    .line 1890
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
