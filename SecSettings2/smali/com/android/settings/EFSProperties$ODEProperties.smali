.class public Lcom/android/settings/EFSProperties$ODEProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EFSProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ODEProperties"
.end annotation


# instance fields
.field public AID:[B

.field public authMaxCnt:I

.field public authMode:I

.field public csName:[B

.field public enabledSCP:I

.field public enabledUCSInODE:I

.field public enabledWrap:I

.field public pinMaxLength:I

.field public pinMinLength:I

.field public pukMaxLength:I

.field public pukMinLength:I

.field public storageType:I


# direct methods
.method public constructor <init>(I[BIIIIIIIII[B)V
    .locals 0
    .param p1, "enabledUCSInODE"    # I
    .param p2, "AID"    # [B
    .param p3, "storageType"    # I
    .param p4, "enabledSCP"    # I
    .param p5, "enabledWrap"    # I
    .param p6, "pinMinLength"    # I
    .param p7, "pinMaxLength"    # I
    .param p8, "authMode"    # I
    .param p9, "authMaxCnt"    # I
    .param p10, "pukMinLength"    # I
    .param p11, "pukMaxLength"    # I
    .param p12, "csName"    # [B

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput p1, p0, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 216
    iput-object p2, p0, Lcom/android/settings/EFSProperties$ODEProperties;->AID:[B

    .line 217
    iput p3, p0, Lcom/android/settings/EFSProperties$ODEProperties;->storageType:I

    .line 218
    iput p4, p0, Lcom/android/settings/EFSProperties$ODEProperties;->enabledSCP:I

    .line 219
    iput p5, p0, Lcom/android/settings/EFSProperties$ODEProperties;->enabledWrap:I

    .line 220
    iput p6, p0, Lcom/android/settings/EFSProperties$ODEProperties;->pinMinLength:I

    .line 221
    iput p7, p0, Lcom/android/settings/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 222
    iput p8, p0, Lcom/android/settings/EFSProperties$ODEProperties;->authMode:I

    .line 223
    iput p9, p0, Lcom/android/settings/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 224
    iput p10, p0, Lcom/android/settings/EFSProperties$ODEProperties;->pukMinLength:I

    .line 225
    iput p11, p0, Lcom/android/settings/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 226
    iput-object p12, p0, Lcom/android/settings/EFSProperties$ODEProperties;->csName:[B

    .line 228
    return-void
.end method
