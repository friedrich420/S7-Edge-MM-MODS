.class Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;
.super Ljava/lang/Object;
.source "DocumentImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/dom/DocumentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LEntry"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x74f1dae6138f9fffL


# instance fields
.field listener:Lmf/org/w3c/dom/events/EventListener;

.field final synthetic this$0:Lmf/org/apache/xerces/dom/DocumentImpl;

.field type:Ljava/lang/String;

.field useCapture:Z


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DocumentImpl;Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V
    .registers 5
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "listener"    # Lmf/org/w3c/dom/events/EventListener;
    .param p4, "useCapture"    # Z

    .prologue
    .line 632
    iput-object p1, p0, this$0:Lmf/org/apache/xerces/dom/DocumentImpl;

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    iput-object p2, p0, type:Ljava/lang/String;

    .line 634
    iput-object p3, p0, listener:Lmf/org/w3c/dom/events/EventListener;

    .line 635
    iput-boolean p4, p0, useCapture:Z

    .line 636
    return-void
.end method
