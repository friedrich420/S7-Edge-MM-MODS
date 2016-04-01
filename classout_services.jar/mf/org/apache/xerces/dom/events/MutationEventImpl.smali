.class public Lmf/org/apache/xerces/dom/events/MutationEventImpl;
.super Lmf/org/apache/xerces/dom/events/EventImpl;
.source "MutationEventImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/events/MutationEvent;


# static fields
.field public static final DOM_ATTR_MODIFIED:Ljava/lang/String; = "DOMAttrModified"

.field public static final DOM_CHARACTER_DATA_MODIFIED:Ljava/lang/String; = "DOMCharacterDataModified"

.field public static final DOM_NODE_INSERTED:Ljava/lang/String; = "DOMNodeInserted"

.field public static final DOM_NODE_INSERTED_INTO_DOCUMENT:Ljava/lang/String; = "DOMNodeInsertedIntoDocument"

.field public static final DOM_NODE_REMOVED:Ljava/lang/String; = "DOMNodeRemoved"

.field public static final DOM_NODE_REMOVED_FROM_DOCUMENT:Ljava/lang/String; = "DOMNodeRemovedFromDocument"

.field public static final DOM_SUBTREE_MODIFIED:Ljava/lang/String; = "DOMSubtreeModified"


# instance fields
.field public attrChange:S

.field attrName:Ljava/lang/String;

.field newValue:Ljava/lang/String;

.field prevValue:Ljava/lang/String;

.field relatedNode:Lmf/org/w3c/dom/Node;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/events/EventImpl;-><init>()V

    .line 34
    iput-object v0, p0, relatedNode:Lmf/org/w3c/dom/Node;

    .line 35
    iput-object v0, p0, prevValue:Ljava/lang/String;

    .line 36
    iput-object v0, p0, newValue:Ljava/lang/String;

    .line 37
    iput-object v0, p0, attrName:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getAttrChange()S
    .registers 2

    .prologue
    .line 67
    iget-short v0, p0, attrChange:S

    return v0
.end method

.method public getAttrName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, attrName:Ljava/lang/String;

    return-object v0
.end method

.method public getNewValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, newValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, prevValue:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedNode()Lmf/org/w3c/dom/Node;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, relatedNode:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public initMutationEvent(Ljava/lang/String;ZZLmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V
    .registers 9
    .param p1, "typeArg"    # Ljava/lang/String;
    .param p2, "canBubbleArg"    # Z
    .param p3, "cancelableArg"    # Z
    .param p4, "relatedNodeArg"    # Lmf/org/w3c/dom/Node;
    .param p5, "prevValueArg"    # Ljava/lang/String;
    .param p6, "newValueArg"    # Ljava/lang/String;
    .param p7, "attrNameArg"    # Ljava/lang/String;
    .param p8, "attrChangeArg"    # S

    .prologue
    .line 105
    iput-object p4, p0, relatedNode:Lmf/org/w3c/dom/Node;

    .line 106
    iput-object p5, p0, prevValue:Ljava/lang/String;

    .line 107
    iput-object p6, p0, newValue:Ljava/lang/String;

    .line 108
    iput-object p7, p0, attrName:Ljava/lang/String;

    .line 109
    iput-short p8, p0, attrChange:S

    .line 110
    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/events/EventImpl;->initEvent(Ljava/lang/String;ZZ)V

    .line 111
    return-void
.end method
