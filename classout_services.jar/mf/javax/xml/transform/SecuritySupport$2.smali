.class Lmf/javax/xml/transform/SecuritySupport$2;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/javax/xml/transform/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/javax/xml/transform/SecuritySupport;

.field private final synthetic val$propName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmf/javax/xml/transform/SecuritySupport;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, this$0:Lmf/javax/xml/transform/SecuritySupport;

    iput-object p2, p0, val$propName:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, val$propName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
