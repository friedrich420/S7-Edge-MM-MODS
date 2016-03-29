.class Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;
.super Ljava/lang/Object;
.source "LedCoverCallerIDSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessories/LedCoverCallerIDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallerIDInfo"
.end annotation


# instance fields
.field public mCallerIDCount:I

.field public mIcon:I

.field public mId:I

.field public mName:I

.field final synthetic this$0:Lcom/android/settings/accessories/LedCoverCallerIDSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessories/LedCoverCallerIDSettings;III)V
    .locals 1
    .param p2, "id"    # I
    .param p3, "icon"    # I
    .param p4, "name"    # I

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->this$0:Lcom/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p2, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->mId:I

    .line 108
    iput p3, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->mIcon:I

    .line 109
    iput p4, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->mName:I

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->mCallerIDCount:I

    .line 111
    return-void
.end method


# virtual methods
.method public increaseCallerIDCount()V
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->mCallerIDCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->mCallerIDCount:I

    .line 115
    return-void
.end method

.method public resetCallerIDCount()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->mCallerIDCount:I

    .line 119
    return-void
.end method
