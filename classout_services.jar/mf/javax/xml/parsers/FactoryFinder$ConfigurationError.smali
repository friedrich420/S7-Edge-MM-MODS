.class Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;
.super Ljava/lang/Error;
.source "FactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/javax/xml/parsers/FactoryFinder;
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
    .line 359
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 360
    iput-object p2, p0, exception:Ljava/lang/Exception;

    .line 361
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, exception:Ljava/lang/Exception;

    return-object v0
.end method

.method getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, exception:Ljava/lang/Exception;

    return-object v0
.end method
