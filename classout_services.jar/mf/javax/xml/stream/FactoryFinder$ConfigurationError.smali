.class Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;
.super Ljava/lang/Error;
.source "FactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/javax/xml/stream/FactoryFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigurationError"
.end annotation


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/Exception;

    .prologue
    .line 362
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 363
    iput-object p2, p0, exception:Ljava/lang/Exception;

    .line 364
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, exception:Ljava/lang/Exception;

    return-object v0
.end method

.method getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, exception:Ljava/lang/Exception;

    return-object v0
.end method
