.class final Lmf/org/apache/xerces/dom/ObjectFactory$ConfigurationError;
.super Ljava/lang/Error;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/dom/ObjectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConfigurationError"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1a902049927ee222L


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/Exception;

    .prologue
    .line 530
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 531
    iput-object p2, p0, exception:Ljava/lang/Exception;

    .line 532
    return-void
.end method


# virtual methods
.method getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 540
    iget-object v0, p0, exception:Ljava/lang/Exception;

    return-object v0
.end method
