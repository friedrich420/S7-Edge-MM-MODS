.class public Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
.super Ljava/lang/Object;
.source "PdgStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/internal/pdg/PdgStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivacyData"
.end annotation


# static fields
.field public static final CONTACTS:I = 0x0

.field public static final LOCATION:I = 0x1

.field public static final UIM:I = 0x2


# instance fields
.field private accessTime:J

.field private authState:I

.field private packageName:Ljava/lang/String;

.field private settingState:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, packageName:Ljava/lang/String;

    .line 25
    iput v1, p0, settingState:I

    .line 26
    iput v1, p0, authState:I

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, accessTime:J

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJ)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "setting"    # I
    .param p3, "auth"    # I
    .param p4, "accsess"    # J

    .prologue
    const/4 v1, -0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, packageName:Ljava/lang/String;

    .line 25
    iput v1, p0, settingState:I

    .line 26
    iput v1, p0, authState:I

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, accessTime:J

    .line 33
    iput-object p1, p0, packageName:Ljava/lang/String;

    .line 34
    iput p2, p0, settingState:I

    .line 35
    iput p3, p0, authState:I

    .line 36
    iput-wide p4, p0, accessTime:J

    .line 37
    return-void
.end method


# virtual methods
.method public final getAccessTime()J
    .registers 3

    .prologue
    .line 45
    iget-wide v0, p0, accessTime:J

    return-wide v0
.end method

.method public final getAuthState()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, authState:I

    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSettingState()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, settingState:I

    return v0
.end method

.method public final setAccessTime(J)V
    .registers 4
    .param p1, "access"    # J

    .prologue
    .line 56
    iput-wide p1, p0, accessTime:J

    .line 57
    return-void
.end method

.method public final setAuthState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 52
    iput p1, p0, authState:I

    .line 53
    return-void
.end method

.method public final setSettingState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 48
    iput p1, p0, settingState:I

    .line 49
    return-void
.end method
