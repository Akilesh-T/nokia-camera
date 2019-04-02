.class public Lcom/android/camera/util/MorphoUtil;
.super Ljava/lang/Object;
.source "MorphoUtil.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field public static final mCCT:Lcom/android/camera/async/LockableConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/LockableConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final mDrCheckerResult:Lcom/android/camera/async/LockableConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/LockableConcurrentState",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/android/camera/async/LockableConcurrentState;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/camera/async/LockableConcurrentState;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/camera/util/MorphoUtil;->mDrCheckerResult:Lcom/android/camera/async/LockableConcurrentState;

    .line 16
    new-instance v0, Lcom/android/camera/async/LockableConcurrentState;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/LockableConcurrentState;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/camera/util/MorphoUtil;->mCCT:Lcom/android/camera/async/LockableConcurrentState;

    .line 17
    const-string v0, "MorphoUtil"

    sput-object v0, Lcom/android/camera/util/MorphoUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertIntArrayToString([I)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [I

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "strData":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 133
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    const-string v3, ""

    .line 134
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 139
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static getCCT()I
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/android/camera/util/MorphoUtil;->mCCT:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getDecimal(D)D
    .locals 4
    .param p0, "d"    # D

    .prologue
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 19
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    div-double/2addr p0, v0

    .line 20
    mul-double/2addr p0, v2

    .line 21
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double p0, v0

    .line 22
    div-double/2addr p0, v2

    .line 23
    return-wide p0
.end method

.method public static getFOC()Lcom/android/camera/util/FihOpticalConfiguration;
    .locals 9

    .prologue
    .line 105
    const-string v5, "/vendor/chromatix/FihOptiocalConfiguration.json"

    .line 106
    .local v5, "vendor_path":Ljava/lang/String;
    const-string v1, "/system/etc/FihOptiocalConfiguration.json"

    .line 107
    .local v1, "sys_etc_path":Ljava/lang/String;
    const/4 v0, 0x0

    .line 108
    .local v0, "sys_etc_foc":Lcom/android/camera/util/FihOpticalConfiguration;
    const/4 v3, 0x0

    .line 109
    .local v3, "vendor_chromatics_foc":Lcom/android/camera/util/FihOpticalConfiguration;
    const/4 v2, 0x0

    .local v2, "sys_etc_ver":I
    const/4 v4, 0x0

    .line 111
    .local v4, "vendor_chromatics_ver":I
    invoke-static {v1}, Lcom/android/camera/util/MorphoUtil;->parseFoc(Ljava/lang/String;)Lcom/android/camera/util/FihOpticalConfiguration;

    move-result-object v0

    .line 112
    invoke-static {v5}, Lcom/android/camera/util/MorphoUtil;->parseFoc(Ljava/lang/String;)Lcom/android/camera/util/FihOpticalConfiguration;

    move-result-object v3

    .line 114
    const-string v6, "sys_etc_foc"

    invoke-static {v0, v6}, Lcom/android/camera/util/MorphoUtil;->parseFocVer(Lcom/android/camera/util/FihOpticalConfiguration;Ljava/lang/String;)I

    move-result v2

    .line 115
    const-string v6, "vendor_chromatics_ver"

    invoke-static {v3, v6}, Lcom/android/camera/util/MorphoUtil;->parseFocVer(Lcom/android/camera/util/FihOpticalConfiguration;Ljava/lang/String;)I

    move-result v4

    .line 117
    sget-object v6, Lcom/android/camera/util/MorphoUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "vendor_foc_ver="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v6, Lcom/android/camera/util/MorphoUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sys_etc_ver="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-le v4, v2, :cond_0

    .line 121
    sget-object v6, Lcom/android/camera/util/MorphoUtil;->TAG:Ljava/lang/String;

    const-string v7, "Use vendor_path"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v3    # "vendor_chromatics_foc":Lcom/android/camera/util/FihOpticalConfiguration;
    :goto_0
    return-object v3

    .line 124
    .restart local v3    # "vendor_chromatics_foc":Lcom/android/camera/util/FihOpticalConfiguration;
    :cond_0
    sget-object v6, Lcom/android/camera/util/MorphoUtil;->TAG:Ljava/lang/String;

    const-string v7, "Use sys_etc_path"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    .line 125
    goto :goto_0
.end method

.method public static isNeedHDR([I)Z
    .locals 6
    .param p0, "arrEv"    # [I

    .prologue
    const/4 v4, 0x0

    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, "isNeed":Z
    if-eqz p0, :cond_1

    .line 53
    array-length v5, p0

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget v1, p0, v3

    .line 54
    .local v1, "i":I
    if-gtz v1, :cond_0

    if-gez v1, :cond_3

    .line 55
    :cond_0
    const/4 v2, 0x1

    .line 61
    .end local v1    # "i":I
    :cond_1
    if-eqz v2, :cond_2

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "ev":Ljava/lang/String;
    sget-object v3, Lcom/android/camera/util/MorphoUtil;->mDrCheckerResult:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v3, v0}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    .line 66
    .end local v0    # "ev":Ljava/lang/String;
    :cond_2
    return v2

    .line 53
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static parseEvString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "temp":[Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 45
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_0
    return-object v0
.end method

.method private static parseFoc(Ljava/lang/String;)Lcom/android/camera/util/FihOpticalConfiguration;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 70
    const/4 v2, 0x0

    .line 71
    .local v2, "sOpticalConfiguration":Lcom/android/camera/util/FihOpticalConfiguration;
    sget-object v3, Lcom/android/camera/util/MorphoUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load OpticalConfiguration path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :try_start_0
    new-instance v3, Lflexjson/JSONDeserializer;

    invoke-direct {v3}, Lflexjson/JSONDeserializer;-><init>()V

    const/4 v5, 0x0

    const-class v6, Lcom/android/camera/util/FihOpticalConfiguration;

    .line 74
    invoke-virtual {v3, v5, v6}, Lflexjson/JSONDeserializer;->use(Ljava/lang/String;Ljava/lang/Class;)Lflexjson/JSONDeserializer;

    move-result-object v3

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 75
    invoke-virtual {v3, v5}, Lflexjson/JSONDeserializer;->deserialize(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/camera/util/FihOpticalConfiguration;

    move-object v2, v0

    .line 80
    sget-object v3, Lcom/android/camera/util/MorphoUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load OpticalConfiguration success : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 84
    :goto_0
    return-object v3

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/camera/util/MorphoUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load OpticalConfiguration fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 84
    goto :goto_0
.end method

.method private static parseFocVer(Lcom/android/camera/util/FihOpticalConfiguration;Ljava/lang/String;)I
    .locals 5
    .param p0, "foc"    # Lcom/android/camera/util/FihOpticalConfiguration;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, "ver":I
    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/camera/util/FihOpticalConfiguration;->getOptical_config_version()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/util/FihOpticalConfiguration;->getOptical_config_version()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 101
    :cond_0
    :goto_0
    return v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/util/MorphoUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static parseThreshold(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "expect_size":I
    const/4 v2, 0x0

    .line 29
    .local v2, "thresholdArr":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 30
    .local v1, "fail":Z
    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 31
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 32
    array-length v0, v2

    .line 35
    :cond_0
    if-lez v0, :cond_1

    .line 36
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 39
    :goto_0
    return-object v3

    :cond_1
    const-string v3, "0"

    goto :goto_0
.end method
