.class public abstract Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;
.super Landroid/os/Binder;
.source "IClipboardWorkingFormUiInterface.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.IClipboardWorkingFormUiInterface"

.field static final TRANSACTION_setClipboardDataListChange:I = 0x1

.field static final TRANSACTION_setClipboardDataMgr:I = 0x2

.field static final TRANSACTION_setClipboardDataUiEvent:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.sec.clipboard.IClipboardWorkingFormUiInterface"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "android.sec.clipboard.IClipboardWorkingFormUiInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_48

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 45
    :sswitch_9
    const-string v2, "android.sec.clipboard.IClipboardWorkingFormUiInterface"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v2, "android.sec.clipboard.IClipboardWorkingFormUiInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, setClipboardDataListChange(I)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 59
    .end local v0    # "_arg0":I
    :sswitch_1f
    const-string v2, "android.sec.clipboard.IClipboardWorkingFormUiInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v0

    .line 62
    .local v0, "_arg0":Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-virtual {p0, v0}, setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 68
    .end local v0    # "_arg0":Landroid/sec/clipboard/data/IClipboardDataList;
    :sswitch_33
    const-string v2, "android.sec.clipboard.IClipboardWorkingFormUiInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataUiEvent;

    move-result-object v0

    .line 71
    .local v0, "_arg0":Landroid/sec/clipboard/IClipboardDataUiEvent;
    invoke-virtual {p0, v0}, setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 41
    nop

    :sswitch_data_48
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_33
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
