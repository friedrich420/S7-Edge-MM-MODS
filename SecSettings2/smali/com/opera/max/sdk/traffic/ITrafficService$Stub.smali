.class public abstract Lcom/opera/max/sdk/traffic/ITrafficService$Stub;
.super Landroid/os/Binder;
.source "ITrafficService.java"

# interfaces
.implements Lcom/opera/max/sdk/traffic/ITrafficService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opera/max/sdk/traffic/ITrafficService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opera/max/sdk/traffic/ITrafficService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/opera/max/sdk/traffic/ITrafficService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.opera.max.sdk.traffic.ITrafficService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/opera/max/sdk/traffic/ITrafficService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/opera/max/sdk/traffic/ITrafficService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/opera/max/sdk/traffic/ITrafficService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/opera/max/sdk/traffic/ITrafficService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 28
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 115
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v2, "com.opera.max.sdk.traffic.ITrafficService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.opera.max.sdk.traffic.ITrafficService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/opera/max/sdk/traffic/ITrafficService$Stub;->setImsi(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    const/4 v2, 0x1

    goto :goto_0

    .line 56
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v2, "com.opera.max.sdk.traffic.ITrafficService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 60
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 62
    .local v4, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 64
    .local v6, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v8, 0x1

    .local v8, "_arg3":Z
    :goto_1
    move-object/from16 v2, p0

    .line 65
    invoke-virtual/range {v2 .. v8}, Lcom/opera/max/sdk/traffic/ITrafficService$Stub;->getTrafficSummaryForAllUids(Ljava/lang/String;JJZ)Ljava/util/Map;

    move-result-object v27

    .line 66
    .local v27, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 68
    const/4 v2, 0x1

    goto :goto_0

    .line 64
    .end local v8    # "_arg3":Z
    .end local v27    # "_result":Ljava/util/Map;
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 72
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    :sswitch_3
    const-string v2, "com.opera.max.sdk.traffic.ITrafficService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 76
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 78
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 80
    .restart local v6    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 82
    .local v14, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    const/16 v16, 0x1

    .local v16, "_arg4":Z
    :goto_2
    move-object/from16 v9, p0

    move-object v10, v3

    move v11, v4

    move-wide v12, v6

    .line 83
    invoke-virtual/range {v9 .. v16}, Lcom/opera/max/sdk/traffic/ITrafficService$Stub;->getTrafficSummaryByUid(Ljava/lang/String;IJJZ)Lcom/opera/max/sdk/traffic/TrafficEntry;

    move-result-object v27

    .line 84
    .local v27, "_result":Lcom/opera/max/sdk/traffic/TrafficEntry;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v27, :cond_2

    .line 86
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v2, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/opera/max/sdk/traffic/TrafficEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 82
    .end local v16    # "_arg4":Z
    .end local v27    # "_result":Lcom/opera/max/sdk/traffic/TrafficEntry;
    :cond_1
    const/16 v16, 0x0

    goto :goto_2

    .line 90
    .restart local v16    # "_arg4":Z
    .restart local v27    # "_result":Lcom/opera/max/sdk/traffic/TrafficEntry;
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 96
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":J
    .end local v14    # "_arg3":J
    .end local v16    # "_arg4":Z
    .end local v27    # "_result":Lcom/opera/max/sdk/traffic/TrafficEntry;
    :sswitch_4
    const-string v2, "com.opera.max.sdk.traffic.ITrafficService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 100
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 102
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 104
    .restart local v6    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 106
    .restart local v14    # "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 108
    .local v24, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    const/16 v26, 0x1

    .local v26, "_arg5":Z
    :goto_4
    move-object/from16 v17, p0

    move-object/from16 v18, v3

    move/from16 v19, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v14

    .line 109
    invoke-virtual/range {v17 .. v26}, Lcom/opera/max/sdk/traffic/ITrafficService$Stub;->getTrafficForUid(Ljava/lang/String;IJJJZ)[Lcom/opera/max/sdk/traffic/TrafficEntry;

    move-result-object v27

    .line 110
    .local v27, "_result":[Lcom/opera/max/sdk/traffic/TrafficEntry;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 112
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 108
    .end local v26    # "_arg5":Z
    .end local v27    # "_result":[Lcom/opera/max/sdk/traffic/TrafficEntry;
    :cond_3
    const/16 v26, 0x0

    goto :goto_4

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
