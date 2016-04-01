.class public final Lcom/android/server/pm/PermissionsState$PermissionState;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PermissionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionState"
.end annotation


# instance fields
.field private mFlags:I

.field private mGranted:Z

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PermissionsState$PermissionState;)V
    .registers 3
    .param p1, "other"    # Lcom/android/server/pm/PermissionsState$PermissionState;

    .prologue
    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iget-object v0, p1, mName:Ljava/lang/String;

    iput-object v0, p0, mName:Ljava/lang/String;

    .line 701
    iget-boolean v0, p1, mGranted:Z

    iput-boolean v0, p0, mGranted:Z

    .line 702
    iget v0, p1, mFlags:I

    iput v0, p0, mFlags:I

    .line 703
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    iput-object p1, p0, mName:Ljava/lang/String;

    .line 697
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/PermissionsState$PermissionState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PermissionsState$PermissionState;

    .prologue
    .line 690
    iget-boolean v0, p0, mGranted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/pm/PermissionsState$PermissionState;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PermissionsState$PermissionState;
    .param p1, "x1"    # Z

    .prologue
    .line 690
    iput-boolean p1, p0, mGranted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/pm/PermissionsState$PermissionState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PermissionsState$PermissionState;

    .prologue
    .line 690
    iget v0, p0, mFlags:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/pm/PermissionsState$PermissionState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PermissionsState$PermissionState;
    .param p1, "x1"    # I

    .prologue
    .line 690
    iput p1, p0, mFlags:I

    return p1
.end method


# virtual methods
.method public getFlags()I
    .registers 2

    .prologue
    .line 718
    iget v0, p0, mFlags:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 710
    iget-object v0, p0, mName:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .registers 2

    .prologue
    .line 706
    iget-boolean v0, p0, mGranted:Z

    if-nez v0, :cond_a

    iget v0, p0, mFlags:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isGranted()Z
    .registers 2

    .prologue
    .line 714
    iget-boolean v0, p0, mGranted:Z

    return v0
.end method
