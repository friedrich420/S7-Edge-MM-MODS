.class final Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecoveryCredentialResponse"
.end annotation


# static fields
.field public static final DONE:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

.field public static final ERROR:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

.field public static final OK:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

.field public static final RESPONSE_DONE:I = 0x1

.field public static final RESPONSE_ERROR:I = -0x1

.field public static final RESPONSE_OK:I


# instance fields
.field private final mResponseCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 727
    new-instance v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, <init>(I)V

    sput-object v0, OK:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    .line 728
    new-instance v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, <init>(I)V

    sput-object v0, DONE:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    .line 729
    new-instance v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, <init>(I)V

    sput-object v0, ERROR:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    const/4 v0, 0x0

    iput v0, p0, mResponseCode:I

    .line 735
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "reponseCode"    # I

    .prologue
    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    iput p1, p0, mResponseCode:I

    .line 738
    return-void
.end method


# virtual methods
.method public getResponseCode()I
    .registers 2

    .prologue
    .line 740
    iget v0, p0, mResponseCode:I

    return v0
.end method
