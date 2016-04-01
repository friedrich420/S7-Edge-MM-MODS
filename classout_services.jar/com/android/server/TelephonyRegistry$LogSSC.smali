.class Lcom/android/server/TelephonyRegistry$LogSSC;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogSSC"
.end annotation


# instance fields
.field private mPhoneId:I

.field private mS:Ljava/lang/String;

.field private mState:Landroid/telephony/ServiceState;

.field private mSubId:I

.field private mTime:Landroid/text/format/Time;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TelephonyRegistry$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/TelephonyRegistry$1;

    .prologue
    .line 1946
    invoke-direct {p0}, <init>()V

    return-void
.end method


# virtual methods
.method public set(Landroid/text/format/Time;Ljava/lang/String;IILandroid/telephony/ServiceState;)V
    .registers 6
    .param p1, "t"    # Landroid/text/format/Time;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "subId"    # I
    .param p4, "phoneId"    # I
    .param p5, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1954
    iput-object p1, p0, mTime:Landroid/text/format/Time;

    iput-object p2, p0, mS:Ljava/lang/String;

    iput p3, p0, mSubId:I

    iput p4, p0, mPhoneId:I

    iput-object p5, p0, mState:Landroid/telephony/ServiceState;

    .line 1955
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, mS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mTime:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSubId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPhoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
