.class public Lmf/org/apache/xerces/impl/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final fImmutableVersion:Ljava/lang/String; = "@@VERSION@@"

.field public static fVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "@@VERSION@@"

    sput-object v0, fVersion:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    const-string v0, "@@VERSION@@"

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    .line 55
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, fVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    return-void
.end method
