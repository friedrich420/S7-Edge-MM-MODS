.class public Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;
.super Ljava/lang/Object;
.source "MsgHelper.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5
    const-string v0, "accauthentication_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native genRandom()[B
.end method

.method public native verify_certificate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public native verify_rand_signature(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
.end method
