.class public Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PackageSettingActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataLimitFragment;,
        Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;,
        Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field public static simSlot:I

.field public static subId:I


# instance fields
.field private cityChoose:Landroid/preference/ListPreference;

.field databaseHandler:Landroid/os/Handler;

.field handlerThread:Landroid/os/HandlerThread;

.field private mDataBaseHelper:Lcom/android/settings/trafficmanager/settings/TrafficDataBaseHelper;

.field private operatorChoose:Landroid/preference/ListPreference;

.field private packageChoose:Landroid/preference/ListPreference;

.field private provinceChoose:Landroid/preference/ListPreference;

.field private restrictDataChecked:Z

.field private setOrder:Landroid/preference/EditTextPreference;

.field private setPackageStartDate:Landroid/preference/PreferenceScreen;

.field private shp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 56
    const-string v0, "settings/PackageSettings"

    sput-object v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    .line 92
    sput v1, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    .line 93
    sput v1, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->subId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->restrictDataChecked:Z

    .line 835
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DataBase_query"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->handlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getCommand()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getKeyS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getKeyE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getKeyT()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCommand()Ljava/lang/String;
    .locals 9

    .prologue
    .line 779
    const/4 v0, 0x0

    .line 782
    .local v0, "costType":I
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 787
    :goto_0
    sget-object v3, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "costType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v3, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->mDataBaseHelper:Lcom/android/settings/trafficmanager/settings/TrafficDataBaseHelper;

    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/settings/trafficmanager/settings/TrafficDataBaseHelper;->getQueryCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 789
    .local v2, "s":Ljava/lang/String;
    sget-object v3, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---->getQueryCommand<-----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return-object v2

    .line 783
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 784
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 785
    sget-object v3, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    const-string v4, "NumberFormatException()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getKeyE()Ljava/lang/String;
    .locals 9

    .prologue
    .line 807
    const/4 v0, 0x0

    .line 809
    .local v0, "costType":I
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 814
    :goto_0
    sget-object v3, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "costType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v3, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->mDataBaseHelper:Lcom/android/settings/trafficmanager/settings/TrafficDataBaseHelper;

    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/settings/trafficmanager/settings/TrafficDataBaseHelper;->getQueryKeyEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 817
    .local v2, "s":Ljava/lang/String;
    sget-object v3, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---->getQueryKeyEnd<-----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return-object v2

    .line 810
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 811
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 812
    sget-object v3, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    const-string v4, "NumberFormatException()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getKeyS()Ljava/lang/String;
    .locals 9

    .prologue
    .line 793
    const/4 v0, 0x0

    .line 795
    .local v0, "costType":I
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 800
    :goto_0
    sget-object v3, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "costType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v3, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->mDataBaseHelper:Lcom/android/settings/trafficmanager/settings/TrafficDataBaseHelper;

    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/settings/trafficmanager/settings/TrafficDataBaseHelper;->getQueryKeyStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, "s":Ljava/lang/String;
    sget-object v3, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---->getQueryKeyStart<-----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return-object v2

    .line 796
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 797
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 798
    sget-object v3, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    const-string v4, "NumberFormatException()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getKeyT()Ljava/lang/String;
    .locals 10

    .prologue
    .line 821
    const/4 v0, 0x0

    .line 823
    .local v0, "costType":I
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 828
    :goto_0
    sget-object v3, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "costType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->mDataBaseHelper:Lcom/android/settings/trafficmanager/settings/TrafficDataBaseHelper;

    iget-object v5, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/settings/trafficmanager/settings/TrafficDataBaseHelper;->getQueryKeyType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 831
    .local v2, "s":Ljava/lang/String;
    sget-object v3, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---->getQueryKeyType<-----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return-object v2

    .line 824
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 825
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 826
    sget-object v3, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    const-string v4, "NumberFormatException()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSummary(Landroid/content/SharedPreferences;)V
    .locals 2
    .param p1, "shp"    # Landroid/content/SharedPreferences;

    .prologue
    .line 250
    sget-object v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    const-string v1, "---->initSummary<-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 264
    return-void
.end method

.method private sendText()V
    .locals 3

    .prologue
    .line 839
    sget-object v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    const-string v1, "---->setCityEnties<-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 844
    new-instance v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$1;

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$1;-><init>(Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->databaseHandler:Landroid/os/Handler;

    .line 856
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->databaseHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$2;-><init>(Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 867
    :cond_0
    sget-object v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---->setCityEnties<-----s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_start:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    sget-object v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---->setCityEnties<-----e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_end:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    sget-object v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---->setCityEnties<-----t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    return-void
.end method

.method private setCityEnties()V
    .locals 2

    .prologue
    .line 602
    sget-object v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    const-string v1, "---->setCityEnties<-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    if-nez v0, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    const-string v0, "CMCC"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 608
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100fb

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 609
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100ff

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 622
    :cond_2
    :goto_1
    const-string v0, "Beijing"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 624
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100bf

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 625
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100c0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 611
    :cond_3
    const-string v0, "CU"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 613
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    const v1, 0x7f110102

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 614
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    const v1, 0x7f110103

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_1

    .line 616
    :cond_4
    const-string v0, "CTC"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 618
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    const v1, 0x7f110100

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 619
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    const v1, 0x7f110101

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_1

    .line 627
    :cond_5
    const-string v0, "Tianjin"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 629
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100c1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 630
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100c2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 632
    :cond_6
    const-string v0, "Shanghai"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 634
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100c3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 635
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100c4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 637
    :cond_7
    const-string v0, "Chongqing"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 639
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100c5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 640
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100c6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 642
    :cond_8
    const-string v0, "Guangdong"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 644
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100c7

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 645
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100c8

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 647
    :cond_9
    const-string v0, "Shandong"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 649
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100c9

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 650
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100ca

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 652
    :cond_a
    const-string v0, "Shanxi"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 654
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100cb

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 655
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100cc

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 657
    :cond_b
    const-string v0, "Liaoning"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 659
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100cf

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 660
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100d0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 662
    :cond_c
    const-string v0, "Gansu"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 664
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100d1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 665
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100d2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 667
    :cond_d
    const-string v0, "Xinjiang"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 669
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100d3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 670
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100d4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 672
    :cond_e
    const-string v0, "Jilin"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 674
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100d5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 675
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100d6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 677
    :cond_f
    const-string v0, "Jiangsu"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 679
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100d7

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 680
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100d8

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 682
    :cond_10
    const-string v0, "Heilongjiang"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 684
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100dd

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 685
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100de

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 687
    :cond_11
    const-string v0, "Neimenggu"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 689
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100df

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 690
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100e0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 692
    :cond_12
    const-string v0, "Shaanxi"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 694
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100cd

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 695
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100ce

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 697
    :cond_13
    const-string v0, "Sichuan"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 699
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100e1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 700
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100e2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 702
    :cond_14
    const-string v0, "Hubei"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 704
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100e3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 705
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100e4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 707
    :cond_15
    const-string v0, "Hunan"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 709
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100e5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 710
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100e6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 712
    :cond_16
    const-string v0, "Yunnan"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 714
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100e7

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 715
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100e8

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 717
    :cond_17
    const-string v0, "Guizhou"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 719
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100e9

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 720
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100ea

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 722
    :cond_18
    const-string v0, "Fujian"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 724
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100eb

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 725
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100ec

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 727
    :cond_19
    const-string v0, "Jiangxi"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 729
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100ed

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 730
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100ee

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 732
    :cond_1a
    const-string v0, "Henan"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 734
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100bd

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 735
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100be

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 737
    :cond_1b
    const-string v0, "Hebei"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 739
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100b7

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 740
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100b8

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 742
    :cond_1c
    const-string v0, "Xizang"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 744
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100f3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 745
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100f4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 747
    :cond_1d
    const-string v0, "Zhejiang"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 749
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100d9

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 750
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100da

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 752
    :cond_1e
    const-string v0, "Anhui"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 754
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100db

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 755
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100dc

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 757
    :cond_1f
    const-string v0, "Guangxi"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 759
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100bb

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 760
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100bc

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 762
    :cond_20
    const-string v0, "Ningxia"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 764
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100ef

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 765
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100f0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 767
    :cond_21
    const-string v0, "Hainan"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 769
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100b9

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 770
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100ba

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 773
    :cond_22
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100f5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 774
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    const v1, 0x7f1100f6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 874
    const/16 v0, 0x25

    return v0
.end method

.method public getOrderToSend()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 330
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    if-nez v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setOrder:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setOrder:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---->getOrderToSend<-----str"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setOrder:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v0, "CMCC"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 336
    sget v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    if-nez v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setOrder:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->OPERATOR_CMCC_SEND_BODY:Ljava/lang/String;

    goto :goto_0

    .line 338
    :cond_2
    sget v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    if-ne v0, v3, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setOrder:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->OPERATOR_CMCC_SEND_BODY_1:Ljava/lang/String;

    goto :goto_0

    .line 341
    :cond_3
    const-string v0, "CU"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 342
    sget v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    if-nez v0, :cond_4

    .line 343
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setOrder:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->OPERATOR_CU_SEND_BODY:Ljava/lang/String;

    goto :goto_0

    .line 344
    :cond_4
    sget v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    if-ne v0, v3, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setOrder:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->OPERATOR_CU_SEND_BODY_1:Ljava/lang/String;

    goto/16 :goto_0

    .line 347
    :cond_5
    const-string v0, "CTC"

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    sget v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    if-nez v0, :cond_6

    .line 349
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setOrder:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->OPERATOR_CTC_SEND_BODY:Ljava/lang/String;

    goto/16 :goto_0

    .line 350
    :cond_6
    sget v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    if-ne v0, v3, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setOrder:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->OPERATOR_CTC_SEND_BODY_1:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->addPreferencesFromResource(I)V

    .line 113
    new-instance v0, Lcom/android/settings/trafficmanager/settings/TrafficDataBaseHelper;

    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/trafficmanager/settings/TrafficDataBaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->mDataBaseHelper:Lcom/android/settings/trafficmanager/settings/TrafficDataBaseHelper;

    .line 114
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 115
    sget v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    if-nez v0, :cond_4

    .line 116
    const-string v0, "province_choose"

    invoke-virtual {p0, v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    .line 117
    const-string v0, "city_choose"

    invoke-virtual {p0, v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    .line 118
    const-string v0, "operator_choose"

    invoke-virtual {p0, v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    .line 119
    const-string v0, "set_order_editor"

    invoke-virtual {p0, v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setOrder:Landroid/preference/EditTextPreference;

    .line 120
    const-string v0, "set_package_start_date"

    invoke-virtual {p0, v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;

    .line 121
    const-string v0, "package_choose"

    invoke-virtual {p0, v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    .line 124
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setOrder:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "set_attribution_and_operator_1"

    invoke-virtual {p0, v1}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    :cond_0
    :goto_0
    sget v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    if-eqz v0, :cond_1

    sget v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    if-ne v0, v3, :cond_3

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->shp:Landroid/content/SharedPreferences;

    .line 150
    invoke-direct {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setCityEnties()V

    .line 151
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->shp:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->initSummary(Landroid/content/SharedPreferences;)V

    .line 153
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "set_attribution_and_operator"

    invoke-virtual {p0, v1}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "set_attribution_and_operator_1"

    invoke-virtual {p0, v1}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 165
    :cond_3
    return-void

    .line 131
    :cond_4
    sget v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    if-ne v0, v3, :cond_0

    .line 132
    const-string v0, "province_choose_1"

    invoke-virtual {p0, v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    .line 133
    const-string v0, "city_choose_1"

    invoke-virtual {p0, v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    .line 134
    const-string v0, "operator_choose_1"

    invoke-virtual {p0, v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    .line 135
    const-string v0, "set_order_editor_1"

    invoke-virtual {p0, v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setOrder:Landroid/preference/EditTextPreference;

    .line 136
    const-string v0, "set_package_start_date_1"

    invoke-virtual {p0, v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;

    .line 137
    const-string v0, "package_choose_1"

    invoke-virtual {p0, v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    .line 140
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setOrder:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "set_attribution_and_operator"

    invoke-virtual {p0, v1}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 287
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->mDataBaseHelper:Lcom/android/settings/trafficmanager/settings/TrafficDataBaseHelper;

    invoke-virtual {v0}, Lcom/android/settings/trafficmanager/settings/TrafficDataBaseHelper;->closeDatabase()V

    .line 288
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 289
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 282
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 304
    sget-object v1, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    const-string v2, "---->onPreferenceChange<-----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    .line 306
    sget-object v1, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---->setDataUsed.provinceChoose()<-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TJ"

    iget-object v4, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setCityEnties()V

    .line 326
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_2

    .line 313
    invoke-direct {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->sendText()V

    goto :goto_0

    .line 315
    :cond_2
    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    if-eq p1, v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_3

    .line 320
    invoke-direct {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->sendText()V

    goto :goto_0

    .line 322
    :cond_3
    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setOrder:Landroid/preference/EditTextPreference;

    if-ne p1, v1, :cond_4

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getOrderToSend()V

    goto :goto_0

    .line 326
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 293
    sget-object v1, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    const-string v2, "---->onPreferenceClick<-----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setPackageStartDate:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_0

    .line 296
    new-instance v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment;

    invoke-direct {v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment;-><init>()V

    .line 297
    .local v0, "cycleEditor":Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment;
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DatePickDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 299
    .end local v0    # "cycleEditor":Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$CycleEditorFragment;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 269
    invoke-direct {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setCityEnties()V

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->shp:Landroid/content/SharedPreferences;

    .line 271
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->shp:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->initSummary(Landroid/content/SharedPreferences;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 274
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const v6, 0x7f0e169e

    const/4 v5, 0x0

    .line 169
    sget-object v2, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    const-string v3, "---->onSharedPreferenceChanged<-----"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v2, "province_choose"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "city_choose"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "operator_choose"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "province_choose_1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "city_choose_1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "operator_choose_1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "package_choose"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "package_choose_1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    :cond_0
    sget-object v2, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---->enter IF<----- key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0, p1}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->initSummary(Landroid/content/SharedPreferences;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 182
    :cond_1
    const-string v2, "city_choose"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "city_choose_1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "package_choose"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "package_choose_1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->sendText()V

    .line 189
    :cond_3
    const-string v2, "province_choose"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    if-eqz v2, :cond_4

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "dSummary":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 194
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "city_choose"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    invoke-direct {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setCityEnties()V

    .line 198
    .end local v0    # "dSummary":Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    const-string v2, "province_choose_1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    if-eqz v2, :cond_5

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .restart local v0    # "dSummary":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 203
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "city_choose_1"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    invoke-direct {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setCityEnties()V

    .line 208
    .end local v0    # "dSummary":Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    const-string v2, "operator_choose"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    if-eqz v2, :cond_6

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    .restart local v0    # "dSummary":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 213
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "package_choose"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    invoke-direct {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setCityEnties()V

    .line 217
    .end local v0    # "dSummary":Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_6
    const-string v2, "operator_choose_1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    if-eqz v2, :cond_7

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    .restart local v0    # "dSummary":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 222
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "package_choose_1"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    invoke-direct {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setCityEnties()V

    .line 226
    .end local v0    # "dSummary":Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_7
    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->provinceChoose:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->cityChoose:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->packageChoose:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    .line 234
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 235
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    sget v2, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    if-nez v2, :cond_d

    .line 236
    const-string v2, "set_order_editor"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    :cond_9
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setOrder:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 242
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_a
    const-string v2, "set_order_editor_1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "set_order_editor"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 244
    :cond_b
    sget-object v2, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    const-string v3, "---->onSharedPreferenceChanged<-----KEY_SET_ORDER"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getOrderToSend()V

    .line 247
    :cond_c
    return-void

    .line 237
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_d
    sget v2, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 238
    const-string v2, "set_order_editor_1"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public setSendText(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 358
    sget-object v1, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---->setSendText<-----str"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    :cond_0
    const-string v1, "CMCC"

    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 361
    const-string p1, "CXLL"

    .line 367
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 368
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget v1, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    if-nez v1, :cond_5

    .line 369
    const-string v1, "set_order_editor"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 372
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 373
    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setOrder:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 374
    return-void

    .line 362
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    const-string v1, "CU"

    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 363
    const-string p1, "LL"

    goto :goto_0

    .line 364
    :cond_4
    const-string v1, "CTC"

    iget-object v2, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->operatorChoose:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    const-string p1, "108"

    goto :goto_0

    .line 370
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    sget v1, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 371
    const-string v1, "set_order_editor_1"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method
