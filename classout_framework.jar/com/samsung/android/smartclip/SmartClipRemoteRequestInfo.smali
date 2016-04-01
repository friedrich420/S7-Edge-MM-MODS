.class public Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
.super Ljava/lang/Object;
.source "SmartClipRemoteRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_TYPE_AIR_BUTTON_HIT_TEST:I = 0x2

.field public static final REQUEST_TYPE_INJECT_INPUT_EVENT:I = 0x3

.field public static final REQUEST_TYPE_INVALID:I = 0x0

.field public static final REQUEST_TYPE_SCROLLABLE_AREA_INFO:I = 0x4

.field public static final REQUEST_TYPE_SCROLLABLE_VIEW_INFO:I = 0x5

.field public static final REQUEST_TYPE_SMART_CLIP_META_EXTRACTION:I = 0x1


# instance fields
.field public mCallerPid:I

.field public mCallerUid:I

.field public mRequestData:Landroid/os/Parcelable;

.field public mRequestId:I

.field public mRequestType:I

.field public mTargetWindowLayer:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, mCallerPid:I

    .line 37
    iput v0, p0, mCallerUid:I

    .line 39
    iput v0, p0, mRequestId:I

    .line 40
    iput v0, p0, mRequestType:I

    .line 43
    const/4 v0, -0x1

    iput v0, p0, mTargetWindowLayer:I

    .line 46
    return-void
.end method

.method public constructor <init>(IILandroid/os/Parcelable;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "requestData"    # Landroid/os/Parcelable;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, mCallerPid:I

    .line 37
    iput v0, p0, mCallerUid:I

    .line 39
    iput v0, p0, mRequestId:I

    .line 40
    iput v0, p0, mRequestType:I

    .line 43
    const/4 v0, -0x1

    iput v0, p0, mTargetWindowLayer:I

    .line 49
    iput p1, p0, mRequestId:I

    .line 50
    iput p2, p0, mRequestType:I

    .line 51
    iput-object p3, p0, mRequestData:Landroid/os/Parcelable;

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mCallerPid:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mCallerUid:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mRequestId:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mRequestType:I

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, mRequestData:Landroid/os/Parcelable;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mTargetWindowLayer:I

    .line 77
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 62
    iget v0, p0, mCallerPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, mCallerUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, mRequestType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, mRequestData:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 67
    iget v0, p0, mTargetWindowLayer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return-void
.end method
