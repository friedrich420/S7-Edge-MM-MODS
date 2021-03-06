.class public Landroid/security/keystore/AndroidKeyStoreECPrivateKey;
.super Landroid/security/keystore/AndroidKeyStorePrivateKey;
.source "AndroidKeyStoreECPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/ECKey;


# instance fields
.field private final mParams:Ljava/security/spec/ECParameterSpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/security/spec/ECParameterSpec;

    .prologue
    .line 32
    const-string v0, "EC"

    invoke-direct {p0, p1, v0}, Landroid/security/keystore/AndroidKeyStorePrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iput-object p2, p0, mParams:Ljava/security/spec/ECParameterSpec;

    .line 34
    return-void
.end method


# virtual methods
.method public getParams()Ljava/security/spec/ECParameterSpec;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, mParams:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method
