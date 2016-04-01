.class final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyguardState"
.end annotation


# instance fields
.field public bootCompleted:Z

.field public currentUser:I

.field deviceHasKeyguard:Z

.field dreaming:Z

.field public enabled:Z

.field inputRestricted:Z

.field public interactiveState:I

.field occluded:Z

.field occludedSub:Z

.field public offReason:I

.field public screenState:I

.field secure:Z

.field showing:Z

.field showingAndNotOccluded:Z

.field systemIsReady:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v0, p0, showing:Z

    .line 66
    iput-boolean v0, p0, showingAndNotOccluded:Z

    .line 67
    iput-boolean v0, p0, secure:Z

    .line 68
    iput-boolean v0, p0, deviceHasKeyguard:Z

    .line 69
    return-void
.end method
