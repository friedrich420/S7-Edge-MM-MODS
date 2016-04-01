.class public abstract Lcom/android/internal/view/IInputMethodManager$Stub;
.super Landroid/os/Binder;
.source "IInputMethodManager.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodManager"

.field static final TRANSACTION_addClient:I = 0x6

.field static final TRANSACTION_changeFullInputMethod:I = 0x2a

.field static final TRANSACTION_dismissAndShowAgainInputMethodPicker:I = 0x27

.field static final TRANSACTION_finishInput:I = 0x9

.field static final TRANSACTION_getCurrentFocusDisplayID:I = 0x29

.field static final TRANSACTION_getCurrentInputMethodSubtype:I = 0x19

.field static final TRANSACTION_getEnabledInputMethodList:I = 0x2

.field static final TRANSACTION_getEnabledInputMethodSubtypeList:I = 0x3

.field static final TRANSACTION_getInputMethodList:I = 0x1

.field static final TRANSACTION_getInputMethodWindowVisibleHeight:I = 0x20

.field static final TRANSACTION_getLastInputMethodSubtype:I = 0x4

.field static final TRANSACTION_getShortcutInputMethodsAndSubtypes:I = 0x5

.field static final TRANSACTION_getWACOMPen:I = 0x25

.field static final TRANSACTION_hideMySoftInput:I = 0x13

.field static final TRANSACTION_hideSoftInput:I = 0xb

.field static final TRANSACTION_isAccessoryKeyboard:I = 0x23

.field static final TRANSACTION_isCurrentInputMethodAsSamsungKeyboard:I = 0x28

.field static final TRANSACTION_isInputMethodShown:I = 0x26

.field static final TRANSACTION_minimizeSoftInput:I = 0xc

.field static final TRANSACTION_notifySuggestionPicked:I = 0x18

.field static final TRANSACTION_notifyUserAction:I = 0x21

.field static final TRANSACTION_registerSuggestionSpansForNotification:I = 0x17

.field static final TRANSACTION_removeClient:I = 0x7

.field static final TRANSACTION_setAdditionalInputMethodSubtypes:I = 0x1f

.field static final TRANSACTION_setCurrentInputMethodSubtype:I = 0x1a

.field static final TRANSACTION_setImeWindowStatus:I = 0x16

.field static final TRANSACTION_setInputMethod:I = 0x11

.field static final TRANSACTION_setInputMethodAndSubtype:I = 0x12

.field static final TRANSACTION_setInputMethodEnabled:I = 0x1e

.field static final TRANSACTION_setScreenBrightness:I = 0x22

.field static final TRANSACTION_setWACOMPen:I = 0x24

.field static final TRANSACTION_shouldOfferSwitchingToNextInputMethod:I = 0x1d

.field static final TRANSACTION_showInputMethodAndSubtypeEnablerFromClient:I = 0x10

.field static final TRANSACTION_showInputMethodPickerFromClient:I = 0xf

.field static final TRANSACTION_showMySoftInput:I = 0x14

.field static final TRANSACTION_showSoftInput:I = 0xa

.field static final TRANSACTION_startInput:I = 0x8

.field static final TRANSACTION_switchToLastInputMethod:I = 0x1b

.field static final TRANSACTION_switchToNextInputMethod:I = 0x1c

.field static final TRANSACTION_undoMinimizeSoftInput:I = 0xd

.field static final TRANSACTION_updateStatusIcon:I = 0x15

.field static final TRANSACTION_windowGainedFocus:I = 0xe


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_3
    return-object v0

    .line 32
    :cond_4
    const-string v1, "com.android.internal.view.IInputMethodManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodManager;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Lcom/android/internal/view/IInputMethodManager;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
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
    .line 44
    sparse-switch p1, :sswitch_data_4c2

    .line 553
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 48
    :sswitch_8
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    goto :goto_7

    .line 53
    :sswitch_f
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, getInputMethodList()Ljava/util/List;

    move-result-object v9

    .line 55
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 57
    const/4 v0, 0x1

    goto :goto_7

    .line 61
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :sswitch_20
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, getEnabledInputMethodList()Ljava/util/List;

    move-result-object v9

    .line 63
    .restart local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 65
    const/4 v0, 0x1

    goto :goto_7

    .line 69
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :sswitch_31
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v2, 0x1

    .line 74
    .local v2, "_arg1":Z
    :goto_41
    invoke-virtual {p0, v1, v2}, getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v10

    .line 75
    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 77
    const/4 v0, 0x1

    goto :goto_7

    .line 73
    .end local v2    # "_arg1":Z
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_4d
    const/4 v2, 0x0

    goto :goto_41

    .line 81
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_4f
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    .line 83
    .local v8, "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v8, :cond_67

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/view/inputmethod/InputMethodSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    :goto_65
    const/4 v0, 0x1

    goto :goto_7

    .line 89
    :cond_67
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_65

    .line 95
    .end local v8    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_6c
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, getShortcutInputMethodsAndSubtypes()Ljava/util/List;

    move-result-object v8

    .line 97
    .local v8, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 99
    const/4 v0, 0x1

    goto :goto_7

    .line 103
    .end local v8    # "_result":Ljava/util/List;
    :sswitch_7d
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 107
    .local v1, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v2

    .line 109
    .local v2, "_arg1":Lcom/android/internal/view/IInputContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 111
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 112
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 118
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v2    # "_arg1":Lcom/android/internal/view/IInputContext;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :sswitch_a3
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 121
    .restart local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p0, v1}, removeClient(Lcom/android/internal/view/IInputMethodClient;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 127
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    :sswitch_b9
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 131
    .restart local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v2

    .line 133
    .restart local v2    # "_arg1":Lcom/android/internal/view/IInputContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f4

    .line 134
    sget-object v0, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/EditorInfo;

    .line 140
    .local v3, "_arg2":Landroid/view/inputmethod/EditorInfo;
    :goto_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 141
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v8

    .line 142
    .local v8, "_result":Lcom/android/internal/view/InputBindResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v8, :cond_f6

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Lcom/android/internal/view/InputBindResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 150
    :goto_f1
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 137
    .end local v3    # "_arg2":Landroid/view/inputmethod/EditorInfo;
    .end local v4    # "_arg3":I
    .end local v8    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_f4
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/view/inputmethod/EditorInfo;
    goto :goto_dc

    .line 148
    .restart local v4    # "_arg3":I
    .restart local v8    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_f6
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f1

    .line 154
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v2    # "_arg1":Lcom/android/internal/view/IInputContext;
    .end local v3    # "_arg2":Landroid/view/inputmethod/EditorInfo;
    .end local v4    # "_arg3":I
    .end local v8    # "_result":Lcom/android/internal/view/InputBindResult;
    :sswitch_fb
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 157
    .restart local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p0, v1}, finishInput(Lcom/android/internal/view/IInputMethodClient;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 163
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    :sswitch_111
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 167
    .restart local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 169
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_140

    .line 170
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 175
    .local v3, "_arg2":Landroid/os/ResultReceiver;
    :goto_130
    invoke-virtual {p0, v1, v2, v3}, showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v8

    .line 176
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v8, :cond_142

    const/4 v0, 0x1

    :goto_13a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 173
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    .end local v8    # "_result":Z
    :cond_140
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/ResultReceiver;
    goto :goto_130

    .line 177
    .restart local v8    # "_result":Z
    :cond_142
    const/4 v0, 0x0

    goto :goto_13a

    .line 182
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    .end local v8    # "_result":Z
    :sswitch_144
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 186
    .restart local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 188
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_173

    .line 189
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 194
    .restart local v3    # "_arg2":Landroid/os/ResultReceiver;
    :goto_163
    invoke-virtual {p0, v1, v2, v3}, hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v8

    .line 195
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v8, :cond_175

    const/4 v0, 0x1

    :goto_16d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 192
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    .end local v8    # "_result":Z
    :cond_173
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/ResultReceiver;
    goto :goto_163

    .line 196
    .restart local v8    # "_result":Z
    :cond_175
    const/4 v0, 0x0

    goto :goto_16d

    .line 201
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    .end local v8    # "_result":Z
    :sswitch_177
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 205
    .restart local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 206
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, minimizeSoftInput(Lcom/android/internal/view/IInputMethodClient;I)Z

    move-result v8

    .line 207
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v8, :cond_198

    const/4 v0, 0x1

    :goto_192
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 208
    :cond_198
    const/4 v0, 0x0

    goto :goto_192

    .line 213
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :sswitch_19a
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, undoMinimizeSoftInput()V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 220
    :sswitch_1a8
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 224
    .restart local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 226
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 228
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 230
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 232
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f0

    .line 233
    sget-object v0, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/EditorInfo;

    .line 239
    .local v6, "_arg5":Landroid/view/inputmethod/EditorInfo;
    :goto_1d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v7

    .local v7, "_arg6":Lcom/android/internal/view/IInputContext;
    move-object v0, p0

    .line 240
    invoke-virtual/range {v0 .. v7}, windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;

    move-result-object v8

    .line 241
    .local v8, "_result":Lcom/android/internal/view/InputBindResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    if-eqz v8, :cond_1f2

    .line 243
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Lcom/android/internal/view/InputBindResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 249
    :goto_1ed
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 236
    .end local v6    # "_arg5":Landroid/view/inputmethod/EditorInfo;
    .end local v7    # "_arg6":Lcom/android/internal/view/IInputContext;
    .end local v8    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_1f0
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/view/inputmethod/EditorInfo;
    goto :goto_1d3

    .line 247
    .restart local v7    # "_arg6":Lcom/android/internal/view/IInputContext;
    .restart local v8    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_1f2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1ed

    .line 253
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/view/inputmethod/EditorInfo;
    .end local v7    # "_arg6":Lcom/android/internal/view/IInputContext;
    .end local v8    # "_result":Lcom/android/internal/view/InputBindResult;
    :sswitch_1f7
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 257
    .restart local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 258
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 264
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v2    # "_arg1":I
    :sswitch_211
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 268
    .restart local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 275
    .end local v1    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_22b
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 279
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 286
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_241
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 290
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 292
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_265

    .line 293
    sget-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 298
    .local v3, "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_25c
    invoke-virtual {p0, v1, v2, v3}, setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 296
    .end local v3    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_265
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_25c

    .line 304
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_267
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 308
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 309
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, hideMySoftInput(Landroid/os/IBinder;I)V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 315
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :sswitch_27d
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 319
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 320
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, showMySoftInput(Landroid/os/IBinder;I)V

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 326
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :sswitch_293
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 330
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 333
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 339
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :sswitch_2ad
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 343
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 345
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 346
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 352
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_2c7
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    sget-object v0, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    .line 355
    .local v1, "_arg0":[Landroid/text/style/SuggestionSpan;
    invoke-virtual {p0, v1}, registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 361
    .end local v1    # "_arg0":[Landroid/text/style/SuggestionSpan;
    :sswitch_2dd
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_308

    .line 364
    sget-object v0, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/style/SuggestionSpan;

    .line 370
    .local v1, "_arg0":Landroid/text/style/SuggestionSpan;
    :goto_2f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 373
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z

    move-result v8

    .line 374
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    if-eqz v8, :cond_30a

    const/4 v0, 0x1

    :goto_302
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 367
    .end local v1    # "_arg0":Landroid/text/style/SuggestionSpan;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v8    # "_result":Z
    :cond_308
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/text/style/SuggestionSpan;
    goto :goto_2f0

    .line 375
    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v3    # "_arg2":I
    .restart local v8    # "_result":Z
    :cond_30a
    const/4 v0, 0x0

    goto :goto_302

    .line 380
    .end local v1    # "_arg0":Landroid/text/style/SuggestionSpan;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v8    # "_result":Z
    :sswitch_30c
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    .line 382
    .local v8, "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    if-eqz v8, :cond_325

    .line 384
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/view/inputmethod/InputMethodSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    .line 390
    :goto_322
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 388
    :cond_325
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_322

    .line 394
    .end local v8    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_32a
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_34d

    .line 397
    sget-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    .line 402
    .local v1, "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_33d
    invoke-virtual {p0, v1}, setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v8

    .line 403
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    if-eqz v8, :cond_34f

    const/4 v0, 0x1

    :goto_347
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 400
    .end local v1    # "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v8    # "_result":Z
    :cond_34d
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_33d

    .line 404
    .restart local v8    # "_result":Z
    :cond_34f
    const/4 v0, 0x0

    goto :goto_347

    .line 409
    .end local v1    # "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v8    # "_result":Z
    :sswitch_351
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 412
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, switchToLastInputMethod(Landroid/os/IBinder;)Z

    move-result v8

    .line 413
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    if-eqz v8, :cond_36a

    const/4 v0, 0x1

    :goto_364
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 414
    :cond_36a
    const/4 v0, 0x0

    goto :goto_364

    .line 419
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_result":Z
    :sswitch_36c
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 423
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38c

    const/4 v2, 0x1

    .line 424
    .local v2, "_arg1":Z
    :goto_37c
    invoke-virtual {p0, v1, v2}, switchToNextInputMethod(Landroid/os/IBinder;Z)Z

    move-result v8

    .line 425
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    if-eqz v8, :cond_38e

    const/4 v0, 0x1

    :goto_386
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 423
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :cond_38c
    const/4 v2, 0x0

    goto :goto_37c

    .line 426
    .restart local v2    # "_arg1":Z
    .restart local v8    # "_result":Z
    :cond_38e
    const/4 v0, 0x0

    goto :goto_386

    .line 431
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :sswitch_390
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 434
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z

    move-result v8

    .line 435
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    if-eqz v8, :cond_3a9

    const/4 v0, 0x1

    :goto_3a3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 436
    :cond_3a9
    const/4 v0, 0x0

    goto :goto_3a3

    .line 441
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_result":Z
    :sswitch_3ab
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3cb

    const/4 v2, 0x1

    .line 446
    .restart local v2    # "_arg1":Z
    :goto_3bb
    invoke-virtual {p0, v1, v2}, setInputMethodEnabled(Ljava/lang/String;Z)Z

    move-result v8

    .line 447
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    if-eqz v8, :cond_3cd

    const/4 v0, 0x1

    :goto_3c5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 445
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :cond_3cb
    const/4 v2, 0x0

    goto :goto_3bb

    .line 448
    .restart local v2    # "_arg1":Z
    .restart local v8    # "_result":Z
    :cond_3cd
    const/4 v0, 0x0

    goto :goto_3c5

    .line 453
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :sswitch_3cf
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 457
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/inputmethod/InputMethodSubtype;

    .line 458
    .local v2, "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {p0, v1, v2}, setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 464
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_3e9
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, getInputMethodWindowVisibleHeight()I

    move-result v8

    .line 466
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 472
    .end local v8    # "_result":I
    :sswitch_3fb
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 475
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, notifyUserAction(I)V

    .line 476
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 480
    .end local v1    # "_arg0":I
    :sswitch_40a
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 483
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, setScreenBrightness(I)V

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 489
    .end local v1    # "_arg0":I
    :sswitch_41c
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, isAccessoryKeyboard()I

    move-result v8

    .line 491
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 497
    .end local v8    # "_result":I
    :sswitch_42e
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_443

    const/4 v1, 0x1

    .line 500
    .local v1, "_arg0":Z
    :goto_43a
    invoke-virtual {p0, v1}, setWACOMPen(Z)V

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 499
    .end local v1    # "_arg0":Z
    :cond_443
    const/4 v1, 0x0

    goto :goto_43a

    .line 506
    :sswitch_445
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, getWACOMPen()Z

    move-result v8

    .line 508
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    if-eqz v8, :cond_45a

    const/4 v0, 0x1

    :goto_454
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 509
    :cond_45a
    const/4 v0, 0x0

    goto :goto_454

    .line 514
    .end local v8    # "_result":Z
    :sswitch_45c
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, isInputMethodShown()Z

    move-result v8

    .line 516
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    if-eqz v8, :cond_471

    const/4 v0, 0x1

    :goto_46b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 517
    :cond_471
    const/4 v0, 0x0

    goto :goto_46b

    .line 522
    .end local v8    # "_result":Z
    :sswitch_473
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, dismissAndShowAgainInputMethodPicker()V

    .line 524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 529
    :sswitch_481
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v8

    .line 531
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    if-eqz v8, :cond_496

    const/4 v0, 0x1

    :goto_490
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 532
    :cond_496
    const/4 v0, 0x0

    goto :goto_490

    .line 537
    .end local v8    # "_result":Z
    :sswitch_498
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, getCurrentFocusDisplayID()I

    move-result v8

    .line 539
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 545
    .end local v8    # "_result":I
    :sswitch_4aa
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4bf

    const/4 v1, 0x1

    .line 548
    .restart local v1    # "_arg0":Z
    :goto_4b6
    invoke-virtual {p0, v1}, changeFullInputMethod(Z)V

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 547
    .end local v1    # "_arg0":Z
    :cond_4bf
    const/4 v1, 0x0

    goto :goto_4b6

    .line 44
    nop

    :sswitch_data_4c2
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_20
        0x3 -> :sswitch_31
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_6c
        0x6 -> :sswitch_7d
        0x7 -> :sswitch_a3
        0x8 -> :sswitch_b9
        0x9 -> :sswitch_fb
        0xa -> :sswitch_111
        0xb -> :sswitch_144
        0xc -> :sswitch_177
        0xd -> :sswitch_19a
        0xe -> :sswitch_1a8
        0xf -> :sswitch_1f7
        0x10 -> :sswitch_211
        0x11 -> :sswitch_22b
        0x12 -> :sswitch_241
        0x13 -> :sswitch_267
        0x14 -> :sswitch_27d
        0x15 -> :sswitch_293
        0x16 -> :sswitch_2ad
        0x17 -> :sswitch_2c7
        0x18 -> :sswitch_2dd
        0x19 -> :sswitch_30c
        0x1a -> :sswitch_32a
        0x1b -> :sswitch_351
        0x1c -> :sswitch_36c
        0x1d -> :sswitch_390
        0x1e -> :sswitch_3ab
        0x1f -> :sswitch_3cf
        0x20 -> :sswitch_3e9
        0x21 -> :sswitch_3fb
        0x22 -> :sswitch_40a
        0x23 -> :sswitch_41c
        0x24 -> :sswitch_42e
        0x25 -> :sswitch_445
        0x26 -> :sswitch_45c
        0x27 -> :sswitch_473
        0x28 -> :sswitch_481
        0x29 -> :sswitch_498
        0x2a -> :sswitch_4aa
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
