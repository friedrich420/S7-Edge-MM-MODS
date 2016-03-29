.class public Lcom/android/keyguard/status/SecKeyguardWeatherInfo;
.super Ljava/lang/Object;
.source "SecKeyguardWeatherInfo.java"


# instance fields
.field private final WEATHER_INFO_TRUSTED:I

.field private currentCityId:Ljava/lang/String;

.field private currentCityName:Ljava/lang/String;

.field private currentLifeDust:I

.field private currentTemperature:F

.field private highTemperature:F

.field private iconNumber:I

.field private isChangedShowOption:Z

.field private lowTemperature:F

.field private showLockAndCover:I

.field private systemLocaion:I

.field private tempScale:I

.field private trusted:Z

.field private widgetCount:I


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->WEATHER_INFO_TRUSTED:I

    .line 25
    iput v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->iconNumber:I

    .line 26
    iput v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->currentTemperature:F

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->tempScale:I

    .line 28
    iput-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->currentCityId:Ljava/lang/String;

    .line 29
    iput-object v3, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->currentCityName:Ljava/lang/String;

    .line 30
    iput v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->highTemperature:F

    .line 31
    iput v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->lowTemperature:F

    .line 32
    iput-boolean v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->trusted:Z

    .line 33
    iput v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->showLockAndCover:I

    .line 34
    iput-boolean v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->isChangedShowOption:Z

    .line 35
    iput v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->currentLifeDust:I

    .line 36
    iput v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->systemLocaion:I

    .line 37
    iput v1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->widgetCount:I

    .line 38
    return-void
.end method


# virtual methods
.method protected dump()V
    .locals 3

    .prologue
    .line 156
    const-string v0, "SecKeyguardWeatherInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherInfo [icon, temp, scale] = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getIconNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getCurrentTemperature()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getTempScale()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method protected getCurrentCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->currentCityId:Ljava/lang/String;

    return-object v0
.end method

.method protected getCurrentCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->currentCityName:Ljava/lang/String;

    return-object v0
.end method

.method protected getCurrentLifeDust()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->currentLifeDust:I

    return v0
.end method

.method protected getCurrentTemperature()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->currentTemperature:F

    return v0
.end method

.method protected getHighTemperature()F
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->highTemperature:F

    return v0
.end method

.method protected getIconNumber()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->iconNumber:I

    return v0
.end method

.method protected getIsChangedShowOption()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->isChangedShowOption:Z

    return v0
.end method

.method protected getLowTemperature()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->lowTemperature:F

    return v0
.end method

.method protected getShowLockAndCover()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->showLockAndCover:I

    return v0
.end method

.method protected getSystemLocation()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->systemLocaion:I

    return v0
.end method

.method protected getTempScale()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->tempScale:I

    return v0
.end method

.method protected getTrusted()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->trusted:Z

    return v0
.end method

.method protected getWidgetCount()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->widgetCount:I

    return v0
.end method

.method protected setCurrentCityId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->currentCityId:Ljava/lang/String;

    .line 70
    return-void
.end method

.method protected setCurrentCityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->currentCityName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method protected setCurrentLifeDust(I)V
    .locals 0
    .param p1, "dust"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->currentLifeDust:I

    .line 137
    return-void
.end method

.method protected setCurrentTemperature(F)V
    .locals 0
    .param p1, "temp"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->currentTemperature:F

    .line 54
    return-void
.end method

.method protected setHighTemperature(F)V
    .locals 0
    .param p1, "temp"    # F

    .prologue
    .line 85
    iput p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->highTemperature:F

    .line 86
    return-void
.end method

.method protected setIconNumber(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->iconNumber:I

    .line 46
    return-void
.end method

.method protected setIsChangedShowOption(Z)V
    .locals 0
    .param p1, "ischanged"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->isChangedShowOption:Z

    .line 129
    return-void
.end method

.method protected setLowTemperature(F)V
    .locals 0
    .param p1, "temp"    # F

    .prologue
    .line 93
    iput p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->lowTemperature:F

    .line 94
    return-void
.end method

.method protected setShowLockAndCover(I)V
    .locals 0
    .param p1, "show"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->showLockAndCover:I

    .line 121
    return-void
.end method

.method protected setSystemLocation(I)V
    .locals 0
    .param p1, "location"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->systemLocaion:I

    .line 145
    return-void
.end method

.method protected setTempScale(I)V
    .locals 0
    .param p1, "scale"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->tempScale:I

    .line 62
    return-void
.end method

.method protected setTrusted(I)V
    .locals 3
    .param p1, "errCode"    # I

    .prologue
    const/16 v2, 0xc8

    .line 101
    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->trusted:Z

    .line 103
    const-string v0, "SecKeyguardWeatherInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetWork State is Fine : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " & currentCityId is not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->trusted:Z

    .line 106
    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 107
    const-string v0, "SecKeyguardWeatherInfo"

    const-string v1, "currentCityId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_2
    if-eq p1, v2, :cond_0

    .line 110
    const-string v0, "SecKeyguardWeatherInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetWork disabled : Don\'t refresh weather info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setWidgetCount(I)V
    .locals 0
    .param p1, "cnt"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;->widgetCount:I

    .line 153
    return-void
.end method
