.class public Lcom/android/camera/effect/download/InfoCollector/InfoCollector;
.super Ljava/lang/Object;
.source "InfoCollector.java"


# instance fields
.field private NO_PERMISSION:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mContexet:Landroid/content/Context;

.field private mCouldReadPhoneState:Z

.field private mModel:Ljava/lang/String;

.field private mSubversion:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 28
    const-string v0, "com.fihtdc.ApplicationErrorReportReceiver.InfoCollector.InfoCollector"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->tag:Ljava/lang/String;

    .line 31
    const-string v0, "noPermission"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->NO_PERMISSION:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mModel:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mVersion:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mSubversion:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mCouldReadPhoneState:Z

    .line 36
    const-class v0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->TAG:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mContexet:Landroid/content/Context;

    .line 41
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mCouldReadPhoneState:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "couldReadPhoneState"    # Z

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 28
    const-string v0, "com.fihtdc.ApplicationErrorReportReceiver.InfoCollector.InfoCollector"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->tag:Ljava/lang/String;

    .line 31
    const-string v0, "noPermission"

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->NO_PERMISSION:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mModel:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mVersion:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mSubversion:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mCouldReadPhoneState:Z

    .line 36
    const-class v0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->TAG:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mContexet:Landroid/content/Context;

    .line 50
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 51
    iput-boolean p2, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mCouldReadPhoneState:Z

    .line 52
    return-void
.end method


# virtual methods
.method public CheckDualSIM()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 383
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    .line 384
    iget-object v4, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 385
    .local v0, "deviceCount":I
    iget-object v4, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Single or Dula Sim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/effect/util/EffectLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    if-le v0, v2, :cond_1

    :goto_0
    move v3, v2

    .line 412
    .end local v0    # "deviceCount":I
    :cond_0
    :goto_1
    return v3

    .restart local v0    # "deviceCount":I
    :cond_1
    move v2, v3

    .line 392
    goto :goto_0

    .line 409
    .end local v0    # "deviceCount":I
    :catch_0
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public GetBuildID()Ljava/lang/String;
    .locals 12

    .prologue
    .line 318
    const-string v0, "N/A"

    .line 319
    .local v0, "BuildID":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v10, "/proc/"

    const-string v11, "fver"

    invoke-direct {v1, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .local v1, "BuildIDdirProc":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v10, "/"

    const-string v11, "build_id"

    invoke-direct {v3, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .local v3, "BuildIDdirbuildid":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v10, "/system/"

    const-string v11, "build_id"

    invoke-direct {v2, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .local v2, "BuildIDdirSYSbuildid":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 326
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 327
    .local v8, "path":Ljava/lang/String;
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 328
    .local v7, "fr":Ljava/io/FileReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 329
    .local v5, "br":Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, "StrBuildID":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 331
    .local v9, "tempBuildID":[Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v9, v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 332
    const/4 v10, 0x0

    aget-object v10, v9, v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 333
    array-length v10, v9

    const/4 v11, 0x4

    if-le v10, v11, :cond_0

    .line 334
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x3

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x4

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    .end local v4    # "StrBuildID":Ljava/lang/String;
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v7    # "fr":Ljava/io/FileReader;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "tempBuildID":[Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v10, "N/A"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 361
    const-string v10, "ro.build.display.id"

    invoke-static {v10}, Lcom/android/camera/effect/download/InfoCollector/Util;->GetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 362
    .restart local v4    # "StrBuildID":Ljava/lang/String;
    const-string v10, "_"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 363
    .restart local v9    # "tempBuildID":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x3

    if-gt v10, v11, :cond_4

    .line 364
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_A01"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    .end local v4    # "StrBuildID":Ljava/lang/String;
    .end local v9    # "tempBuildID":[Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v0

    .line 339
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 340
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 341
    .restart local v8    # "path":Ljava/lang/String;
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 342
    .restart local v7    # "fr":Ljava/io/FileReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 343
    .restart local v5    # "br":Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 344
    .restart local v4    # "StrBuildID":Ljava/lang/String;
    const-string v10, " "

    const-string v11, "_"

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 345
    const-string v10, "_"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 346
    .restart local v9    # "tempBuildID":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x3

    if-le v10, v11, :cond_0

    .line 347
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 349
    .end local v4    # "StrBuildID":Ljava/lang/String;
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v7    # "fr":Ljava/io/FileReader;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "tempBuildID":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 350
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 351
    .restart local v8    # "path":Ljava/lang/String;
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 352
    .restart local v7    # "fr":Ljava/io/FileReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 353
    .restart local v5    # "br":Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 354
    .restart local v4    # "StrBuildID":Ljava/lang/String;
    const-string v10, " "

    const-string v11, "_"

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 355
    const-string v10, "_"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 356
    .restart local v9    # "tempBuildID":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x3

    if-le v10, v11, :cond_0

    .line 357
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 366
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v7    # "fr":Ljava/io/FileReader;
    .end local v8    # "path":Ljava/lang/String;
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 369
    .end local v4    # "StrBuildID":Ljava/lang/String;
    .end local v9    # "tempBuildID":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 370
    .local v6, "e":Ljava/lang/Exception;
    iget-object v10, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->tag:Ljava/lang/String;

    const-string v11, "Build id :Exception"

    invoke-static {v10, v11}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v10, "ro.build.display.id"

    invoke-static {v10}, Lcom/android/camera/effect/download/InfoCollector/Util;->GetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 372
    .restart local v4    # "StrBuildID":Ljava/lang/String;
    const-string v10, "_"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 373
    .restart local v9    # "tempBuildID":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x3

    if-gt v10, v11, :cond_5

    .line 374
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_A01"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 376
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public ReadInfoFromFver()Z
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 456
    const/4 v0, 0x0

    .line 459
    .local v0, "blResult":Z
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    const-string v11, "/proc/fver"

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x100

    invoke-direct {v4, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 463
    .local v7, "strMlf":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "MLF"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-nez v10, :cond_0

    .line 510
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v0

    .line 515
    .end local v0    # "blResult":Z
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "strMlf":Ljava/lang/String;
    .local v1, "blResult":I
    :goto_0
    return v1

    .line 471
    .end local v1    # "blResult":I
    .restart local v0    # "blResult":Z
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "strMlf":Ljava/lang/String;
    :cond_0
    :try_start_3
    const-string v10, ","

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    add-int/lit8 v3, v10, 0x1

    .line 472
    .local v3, "iStart":I
    const-string v10, "-"

    invoke-virtual {v7, v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    .line 473
    .local v2, "iIndex":I
    if-ne v2, v12, :cond_1

    .line 510
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move v1, v0

    .line 474
    .restart local v1    # "blResult":I
    goto :goto_0

    .line 475
    .end local v1    # "blResult":I
    :cond_1
    :try_start_5
    invoke-virtual {v7, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 478
    .local v6, "strInternalModel":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    .line 479
    const-string v10, "-"

    invoke-virtual {v7, v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    .line 480
    if-ne v2, v12, :cond_2

    .line 510
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move v1, v0

    .line 481
    .restart local v1    # "blResult":I
    goto :goto_0

    .line 482
    .end local v1    # "blResult":I
    :cond_2
    :try_start_7
    invoke-virtual {v7, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 485
    .local v9, "strVersion":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    .line 486
    const-string v10, "-"

    invoke-virtual {v7, v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    .line 487
    if-ne v2, v12, :cond_3

    .line 510
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move v1, v0

    .line 488
    .restart local v1    # "blResult":I
    goto :goto_0

    .line 491
    .end local v1    # "blResult":I
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .line 492
    :try_start_9
    const-string v10, "-"

    invoke-virtual {v7, v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v2

    .line 493
    if-ne v2, v12, :cond_4

    .line 510
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    move v1, v0

    .line 494
    .restart local v1    # "blResult":I
    goto :goto_0

    .line 495
    .end local v1    # "blResult":I
    :cond_4
    :try_start_b
    invoke-virtual {v7, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 498
    .local v5, "strImageID":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    .line 499
    const-string v10, "."

    invoke-virtual {v7, v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v2

    .line 500
    if-ne v2, v12, :cond_5

    .line 510
    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    move v1, v0

    .line 501
    .restart local v1    # "blResult":I
    goto :goto_0

    .line 502
    .end local v1    # "blResult":I
    :cond_5
    :try_start_d
    invoke-virtual {v7, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 504
    .local v8, "strSubVersion":Ljava/lang/String;
    iput-object v5, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mModel:Ljava/lang/String;

    .line 505
    iput-object v9, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mVersion:Ljava/lang/String;

    .line 506
    iput-object v8, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mSubversion:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 508
    const/4 v0, 0x1

    .line 510
    :try_start_e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .end local v2    # "iIndex":I
    .end local v3    # "iStart":I
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "strImageID":Ljava/lang/String;
    .end local v6    # "strInternalModel":Ljava/lang/String;
    .end local v7    # "strMlf":Ljava/lang/String;
    .end local v8    # "strSubVersion":Ljava/lang/String;
    .end local v9    # "strVersion":Ljava/lang/String;
    :goto_1
    move v1, v0

    .line 515
    .restart local v1    # "blResult":I
    goto :goto_0

    .line 510
    .end local v1    # "blResult":I
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v10

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    throw v10
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .line 512
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v10

    goto :goto_1
.end method

.method public findStandarFormatSKUID()Ljava/lang/String;
    .locals 11

    .prologue
    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, "SKUfile1":Ljava/io/File;
    const/4 v1, 0x0

    .line 420
    .local v1, "SKUfile2":Ljava/io/File;
    const-string v8, ""

    .line 422
    .local v8, "skuid":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0    # "SKUfile1":Ljava/io/File;
    const-string v9, "/hidden/data/CDALog/"

    const-string v10, "ID"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .restart local v0    # "SKUfile1":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1    # "SKUfile2":Ljava/io/File;
    const-string v9, "/hidden/data/CDALog/"

    const-string v10, "ID_Final"

    invoke-direct {v1, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .restart local v1    # "SKUfile2":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 426
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 428
    .local v7, "path":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 429
    .local v6, "fr":Ljava/io/FileReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 430
    .local v3, "br":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "Temp":Ljava/lang/String;
    if-eqz v2, :cond_0

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 432
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 452
    .end local v2    # "Temp":Ljava/lang/String;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v7    # "path":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 436
    .restart local v2    # "Temp":Ljava/lang/String;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v7    # "path":Ljava/lang/String;
    :cond_0
    const-string v9, "ro.cda.skuid.id_final"

    invoke-static {v9}, Lcom/android/camera/effect/download/InfoCollector/Util;->GetSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    goto :goto_0

    .line 438
    .end local v2    # "Temp":Ljava/lang/String;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fr":Ljava/io/FileReader;
    :catch_0
    move-exception v5

    .line 439
    .local v5, "e1":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 440
    const-string v9, "ro.cda.skuid.id_final"

    invoke-static {v9}, Lcom/android/camera/effect/download/InfoCollector/Util;->GetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 444
    goto :goto_0

    .line 441
    .end local v5    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 442
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 443
    const-string v9, "ro.cda.skuid.id_final"

    invoke-static {v9}, Lcom/android/camera/effect/download/InfoCollector/Util;->GetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 447
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "path":Ljava/lang/String;
    :cond_1
    const-string v9, "ro.cda.skuid.id_final"

    invoke-static {v9}, Lcom/android/camera/effect/download/InfoCollector/Util;->GetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public getPhoneInfo()Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 56
    new-instance v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;

    invoke-direct {v4}, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;-><init>()V

    .line 59
    .local v4, "phoneInfo":Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->Language:Ljava/lang/String;

    .line 68
    iget-object v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mContexet:Landroid/content/Context;

    const-string v7, "android.permission.READ_PHONE_STATE"

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 69
    .local v3, "permissionCheck":I
    if-eqz v3, :cond_4

    .line 70
    iput-boolean v8, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mCouldReadPhoneState:Z

    .line 76
    :goto_0
    iget-object v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "networkOperator":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 79
    const/4 v6, 0x0

    const/4 v7, 0x3

    :try_start_0
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->MCC:Ljava/lang/String;

    .line 80
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->MNC:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_1
    iget-boolean v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mCouldReadPhoneState:Z

    if-eqz v6, :cond_5

    .line 91
    iget-object v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->imei:Ljava/lang/String;

    .line 99
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->CheckDualSIM()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 101
    :try_start_1
    const-string v6, "persist.radio.imei"

    invoke-static {v6}, Lcom/android/camera/effect/download/InfoCollector/Util;->GetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    const-string v6, "persist.radio.meid"

    .line 102
    invoke-static {v6}, Lcom/android/camera/effect/download/InfoCollector/Util;->GetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    .line 104
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_1

    .line 105
    iget-boolean v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mCouldReadPhoneState:Z

    if-eqz v6, :cond_1

    .line 106
    iget-object v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->IMEI:Ljava/lang/String;

    .line 107
    iget-object v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-le v6, v9, :cond_1

    .line 108
    iget-object v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->IMEI2:Ljava/lang/String;

    .line 113
    :cond_1
    iget-object v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->tag:Ljava/lang/String;

    const-string v7, "dualSIM null"

    invoke-static {v6, v7}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->ReadInfoFromFver()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 181
    iget-object v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mModel:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->Model:Ljava/lang/String;

    .line 182
    iget-object v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mVersion:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->Version:Ljava/lang/String;

    .line 183
    iget-object v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mSubversion:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->Subversion:Ljava/lang/String;

    .line 186
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "BuildSERIAL":Ljava/lang/String;
    iput-object v0, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->PSN:Ljava/lang/String;

    .line 188
    iput-object v0, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->DEVICEID:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->findStandarFormatSKUID()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->skuId:Ljava/lang/String;

    .line 203
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v5

    .line 216
    .local v5, "props":Ljava/util/Properties;
    const-string v6, "ro.product.brand"

    invoke-static {v6}, Lcom/android/camera/effect/download/InfoCollector/Util;->GetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->ProductBrand:Ljava/lang/String;

    .line 234
    const-string v6, "ro.product.name"

    invoke-static {v6}, Lcom/android/camera/effect/download/InfoCollector/Util;->GetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->ProductName:Ljava/lang/String;

    .line 247
    const-string v6, "ro.build.version.sdk"

    invoke-static {v6}, Lcom/android/camera/effect/download/InfoCollector/Util;->GetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->SDKVersion:Ljava/lang/String;

    .line 250
    const-string v6, "ro.build.version.incremental"

    invoke-static {v6}, Lcom/android/camera/effect/download/InfoCollector/Util;->GetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->IncVersion:Ljava/lang/String;

    .line 278
    const-string v6, "ro.boot.device"

    invoke-static {v6}, Lcom/android/camera/effect/download/InfoCollector/Util;->GetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->Project:Ljava/lang/String;

    .line 280
    return-object v4

    .line 72
    .end local v0    # "BuildSERIAL":Ljava/lang/String;
    .end local v2    # "networkOperator":Ljava/lang/String;
    .end local v5    # "props":Ljava/util/Properties;
    :cond_4
    iput-boolean v9, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mCouldReadPhoneState:Z

    goto/16 :goto_0

    .line 81
    .restart local v2    # "networkOperator":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "networkOperator error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 94
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->NO_PERMISSION:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->imei:Ljava/lang/String;

    goto/16 :goto_2

    .line 119
    :cond_6
    :try_start_2
    const-string v6, "persist.radio.imei"

    invoke-static {v6}, Lcom/android/camera/effect/download/InfoCollector/Util;->GetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->IMEI:Ljava/lang/String;

    .line 121
    const-string v6, "persist.radio.meid"

    invoke-static {v6}, Lcom/android/camera/effect/download/InfoCollector/Util;->GetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->MEID:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 124
    :catch_1
    move-exception v1

    .line 126
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-boolean v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mCouldReadPhoneState:Z

    if-eqz v6, :cond_7

    .line 127
    iget-object v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->IMEI:Ljava/lang/String;

    .line 132
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 130
    :cond_7
    iget-object v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->tag:Ljava/lang/String;

    const-string v7, "no permission"

    invoke-static {v6, v7}, Lcom/android/camera/effect/util/EffectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_3
    const-string v6, "persist.radio.imei"

    invoke-static {v6}, Lcom/android/camera/effect/download/InfoCollector/Util;->GetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    const-string v6, "persist.radio.meid"

    .line 143
    invoke-static {v6}, Lcom/android/camera/effect/download/InfoCollector/Util;->GetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    .line 145
    iget-boolean v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mCouldReadPhoneState:Z

    if-eqz v6, :cond_2

    .line 146
    iget-object v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->IMEI:Ljava/lang/String;

    .line 147
    iget-object v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "telephonyManager.getNetworkOperator(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 149
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 147
    invoke-static {v6, v7}, Lcom/android/camera/effect/util/EffectLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 163
    :catch_2
    move-exception v1

    .line 165
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-boolean v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mCouldReadPhoneState:Z

    if-eqz v6, :cond_2

    .line 166
    iget-object v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->IMEI:Ljava/lang/String;

    .line 167
    iget-object v6, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "telephonyManager.getNetworkOperator(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 169
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 167
    invoke-static {v6, v7}, Lcom/android/camera/effect/util/EffectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 157
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    :try_start_4
    const-string v6, "persist.radio.imei"

    invoke-static {v6}, Lcom/android/camera/effect/download/InfoCollector/Util;->GetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->IMEI:Ljava/lang/String;

    .line 159
    const-string v6, "persist.radio.meid"

    invoke-static {v6}, Lcom/android/camera/effect/download/InfoCollector/Util;->GetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/effect/download/InfoCollector/PhoneInfo;->MEID:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .prologue
    .line 286
    const-string v0, ""

    .line 289
    .local v0, "BuildSERIAL":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    .line 290
    iget-object v2, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mContexet:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->TAG:Ljava/lang/String;

    const-string v3, "getPSN: no permission"

    invoke-static {v2, v3}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BuildSERIAL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build.class.getField(\"SERIAL\").get(null).toString() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/os/Build;

    const-string v5, "SERIAL"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    :cond_0
    :goto_1
    return-object v0

    .line 293
    :cond_1
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 300
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 301
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 304
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 305
    iget-object v2, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->mContexet:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 306
    iget-object v2, p0, Lcom/android/camera/effect/download/InfoCollector/InfoCollector;->TAG:Ljava/lang/String;

    const-string v3, "getPSN: no permission"

    invoke-static {v2, v3}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :cond_3
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_1
.end method
