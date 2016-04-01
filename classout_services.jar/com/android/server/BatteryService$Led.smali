.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# instance fields
.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field private final mBatteryLowARGB:I

.field private final mBatteryMediumARGB:I

.field private mLedStatus:I

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    .prologue
    .line 2040
    iput-object p1, p0, this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2037
    const/4 v0, 0x0

    iput v0, p0, mLedStatus:I

    .line 2041
    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, mBatteryLight:Lcom/android/server/lights/Light;

    .line 2043
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, mBatteryLowARGB:I

    .line 2045
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, mBatteryMediumARGB:I

    .line 2047
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, mBatteryFullARGB:I

    .line 2049
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, mBatteryLedOn:I

    .line 2051
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, mBatteryLedOff:I

    .line 2053
    return-void
.end method

.method private isHvdcpPresent()Z
    .registers 14

    .prologue
    .line 2056
    new-instance v11, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/usb/type"

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2057
    .local v11, "mChargerTypeFile":Ljava/io/File;
    const/4 v9, 0x0

    .line 2058
    .local v9, "fileReader":Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 2064
    .local v6, "br":Ljava/io/BufferedReader;
    :try_start_9
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_34

    .line 2065
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .local v10, "fileReader":Ljava/io/FileReader;
    :try_start_e
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_60

    .line 2066
    .end local v6    # "br":Ljava/io/BufferedReader;
    .local v7, "br":Ljava/io/BufferedReader;
    :try_start_13
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 2067
    .local v0, "type":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "USB_HVDCP"

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_63

    move-result v1

    if-eqz v1, :cond_32

    .line 2068
    const/4 v12, 0x1

    .line 2072
    .local v12, "ret":Z
    :goto_25
    if-eqz v7, :cond_2a

    .line 2073
    :try_start_27
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 2074
    :cond_2a
    if-eqz v10, :cond_2f

    .line 2075
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2f} :catch_5c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2f} :catch_4c

    :cond_2f
    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 2085
    .end local v0    # "type":Ljava/lang/String;
    .end local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    :goto_31
    return v12

    .line 2070
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .end local v12    # "ret":Z
    .restart local v0    # "type":Ljava/lang/String;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    :cond_32
    const/4 v12, 0x0

    .restart local v12    # "ret":Z
    goto :goto_25

    .line 2072
    .end local v0    # "type":Ljava/lang/String;
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v10    # "fileReader":Ljava/io/FileReader;
    .end local v12    # "ret":Z
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    :catchall_34
    move-exception v1

    :goto_35
    if-eqz v6, :cond_3a

    .line 2073
    :try_start_37
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 2074
    :cond_3a
    if-eqz v9, :cond_3f

    .line 2075
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    :cond_3f
    throw v1
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_40} :catch_40
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_40} :catch_5a

    .line 2077
    :catch_40
    move-exception v8

    .line 2078
    .local v8, "e":Ljava/io/FileNotFoundException;
    :goto_41
    const/4 v12, 0x0

    .line 2079
    .restart local v12    # "ret":Z
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failure in reading charger type"

    invoke-static {v1, v2, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 2080
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v0    # "type":Ljava/lang/String;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    :catch_4c
    move-exception v8

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 2081
    .end local v0    # "type":Ljava/lang/String;
    .end local v10    # "fileReader":Ljava/io/FileReader;
    .end local v12    # "ret":Z
    .local v8, "e":Ljava/io/IOException;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    :goto_4f
    const/4 v12, 0x0

    .line 2082
    .restart local v12    # "ret":Z
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failure in reading charger type"

    invoke-static {v1, v2, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 2080
    .end local v8    # "e":Ljava/io/IOException;
    .end local v12    # "ret":Z
    :catch_5a
    move-exception v8

    goto :goto_4f

    .line 2077
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v0    # "type":Ljava/lang/String;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v12    # "ret":Z
    :catch_5c
    move-exception v8

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    goto :goto_41

    .line 2072
    .end local v0    # "type":Ljava/lang/String;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .end local v12    # "ret":Z
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    :catchall_60
    move-exception v1

    move-object v9, v10

    .end local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    goto :goto_35

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    :catchall_63
    move-exception v1

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    goto :goto_35
.end method


# virtual methods
.method public updateLightsLocked()V
    .registers 10

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xd

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 2092
    iget-object v3, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$3700(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v3

    iget v1, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 2093
    .local v1, "level":I
    iget-object v3, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$3700(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v3

    iget v2, v3, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 2094
    .local v2, "status":I
    iget-object v3, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$3700(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v3

    iget v0, v3, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 2130
    .local v0, "health":I
    iget-object v3, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$2100(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 2181
    :cond_29
    :goto_29
    return-void

    .line 2134
    :cond_2a
    const/4 v3, 0x4

    if-ne v3, v2, :cond_63

    const/4 v3, 0x3

    if-eq v3, v0, :cond_3a

    const/4 v3, 0x6

    if-eq v3, v0, :cond_3a

    const/4 v3, 0x7

    if-eq v3, v0, :cond_3a

    const/16 v3, 0x8

    if-ne v3, v0, :cond_63

    :cond_3a
    iget-object v3, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 2140
    iget v3, p0, mLedStatus:I

    if-eq v6, v3, :cond_58

    .line 2141
    iget-object v3, p0, mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3, v4, v6, v4, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 2142
    iput v6, p0, mLedStatus:I

    .line 2143
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "turn on LED for not charging"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 2145
    :cond_58
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "stay LED for not charging"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 2147
    :cond_63
    const/4 v3, 0x2

    if-ne v3, v2, :cond_97

    iget-object v3, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-nez v3, :cond_97

    iget-object v3, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 2149
    iget v3, p0, mLedStatus:I

    if-eq v5, v3, :cond_8c

    .line 2150
    iget-object v3, p0, mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3, v4, v5, v4, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 2151
    iput v5, p0, mLedStatus:I

    .line 2152
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "turn on LED for charging"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 2154
    :cond_8c
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "stay LED for charging"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 2156
    :cond_97
    const/4 v3, 0x5

    if-ne v3, v2, :cond_cd

    iget-object v3, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-nez v3, :cond_cd

    iget-object v3, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 2158
    iget v3, p0, mLedStatus:I

    if-eq v8, v3, :cond_c1

    .line 2159
    iget-object v3, p0, mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3, v4, v8, v4, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 2160
    iput v8, p0, mLedStatus:I

    .line 2161
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "turn on LED for fully charged"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 2163
    :cond_c1
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "stay LED for fully charged"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 2165
    :cond_cd
    iget-object v3, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$4300(Lcom/android/server/BatteryService;)I

    move-result v3

    if-gt v1, v3, :cond_108

    iget-object v3, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-nez v3, :cond_108

    iget-object v3, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_108

    .line 2167
    iget v3, p0, mLedStatus:I

    if-eq v7, v3, :cond_fc

    .line 2168
    iget-object v3, p0, mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3, v4, v7, v4, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 2169
    iput v7, p0, mLedStatus:I

    .line 2170
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "turn on LED for low battery"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 2172
    :cond_fc
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "stay LED for low battery"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 2174
    :cond_108
    iget v3, p0, mLedStatus:I

    if-eqz v3, :cond_29

    .line 2175
    iget-object v3, p0, mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3}, Lcom/android/server/lights/Light;->turnOff()V

    .line 2176
    iput v4, p0, mLedStatus:I

    .line 2177
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "turn off LED"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29
.end method
