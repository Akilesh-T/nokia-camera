.class public Lcom/android/camera/scenerecognition/SceneRecognitionUtil;
.super Ljava/lang/Object;
.source "SceneRecognitionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;
    }
.end annotation


# static fields
.field public static final SENSETIME_ANIMAL_ID:I = 0x3

.field public static final SENSETIME_BABY_ID:I = 0x1

.field public static final SENSETIME_BAR_ID:I = 0x13

.field public static final SENSETIME_BEACH_ID:I = 0xd

.field public static final SENSETIME_BLACKBOARD_ID:I = 0x18

.field public static final SENSETIME_BUILDINGS_ID:I = 0x10

.field public static final SENSETIME_CAFETERIA_ID:I = 0x12

.field public static final SENSETIME_CAT_ID:I = 0x5

.field public static final SENSETIME_CREDENTIALS_ID:I = 0x1b

.field public static final SENSETIME_CROWD_ID:I = 0x0

.field public static final SENSETIME_DINNING_ID:I = 0x14

.field public static final SENSETIME_DOG_ID:I = 0x4

.field public static final SENSETIME_FIREWORKS_ID:I = 0xf

.field public static final SENSETIME_FLOWER_ID:I = 0x8

.field public static final SENSETIME_FOOD_ID:I = 0x2

.field public static final SENSETIME_GREEN_PLANT_ID:I = 0x7

.field public static final SENSETIME_INDOOR_ID:I = 0x23

.field public static final SENSETIME_LANDSCAPE_ID:I = 0x9

.field public static final SENSETIME_NIGHTSCAPE_ID:I = 0xe

.field public static final SENSETIME_OUTDOOR_ID:I = 0x24

.field public static final SENSETIME_PEOPLE_FAR_ID:I = 0x1d

.field public static final SENSETIME_PEOPLE_NEAR_ID:I = 0x1e

.field public static final SENSETIME_PLANT_ID:I = 0x6

.field public static final SENSETIME_PROJECTOR_SCREEN_ID:I = 0x19

.field public static final SENSETIME_QRCODE_ID:I = 0x22

.field public static final SENSETIME_RECEIPT_ID:I = 0x1a

.field public static final SENSETIME_SEA_ID:I = 0xa

.field public static final SENSETIME_SHOW_ID:I = 0x16

.field public static final SENSETIME_SKYSCRAPER_ID:I = 0x11

.field public static final SENSETIME_SKY_LARGE_ID:I = 0x21

.field public static final SENSETIME_SKY_MEDIUM_ID:I = 0x20

.field public static final SENSETIME_SNOW_ID:I = 0xc

.field public static final SENSETIME_SPORTS_ID:I = 0x17

.field public static final SENSETIME_SUNSET_SUNRISE_ID:I = 0xb

.field public static final SENSETIME_TEXT_ID:I = 0x1c

.field public static final SENSETIME_WEDDING_ID:I = 0x15

.field public static final SENSETIME_WHITEBOARD_ID:I = 0x1f

.field private static final TAG:Ljava/lang/String; = "SceneRecognitionUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containLastLabel(Lcom/android/camera/scenerecognition/SceneClassifyLabel;Lcom/android/camera/scenerecognition/FilterClassifyLabel;)Z
    .locals 4
    .param p0, "sceneClassifyLabel"    # Lcom/android/camera/scenerecognition/SceneClassifyLabel;
    .param p1, "mLastLabel"    # Lcom/android/camera/scenerecognition/FilterClassifyLabel;

    .prologue
    const/4 v1, 0x0

    .line 149
    if-nez p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v1

    .line 152
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultNum()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultID()[I

    move-result-object v2

    aget v2, v2, v0

    iget v3, p1, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    if-ne v2, v3, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultID()[I

    move-result-object v2

    aget v2, v2, v0

    const/16 v3, 0x23

    if-eq v2, v3, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultID()[I

    move-result-object v2

    aget v2, v2, v0

    const/16 v3, 0x24

    if-eq v2, v3, :cond_2

    .line 156
    const/4 v1, 0x1

    goto :goto_0

    .line 152
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static copyJSONFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 90
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v0, v6, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    .local v0, "JSONFile":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 93
    .local v3, "is":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 109
    .end local v0    # "JSONFile":Ljava/io/File;
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v6

    .line 96
    .restart local v0    # "JSONFile":Ljava/io/File;
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 97
    .local v5, "os":Ljava/io/OutputStream;
    const/16 v6, 0x400

    new-array v1, v6, [B

    .line 98
    .local v1, "buffer":[B
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 99
    .local v4, "length":I
    :goto_1
    if-lez v4, :cond_1

    .line 100
    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 101
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 104
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 105
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 107
    .end local v0    # "JSONFile":Ljava/io/File;
    .end local v1    # "buffer":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "length":I
    .end local v5    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 109
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getAssertJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "utf-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 139
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 145
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getFilterClassifyLabel(Lcom/android/camera/scenerecognition/SceneClassifyLabel;)Lcom/android/camera/scenerecognition/FilterClassifyLabel;
    .locals 12
    .param p0, "cvResults"    # Lcom/android/camera/scenerecognition/SceneClassifyLabel;

    .prologue
    .line 163
    new-instance v5, Lcom/android/camera/scenerecognition/FilterClassifyLabel;

    invoke-direct {v5}, Lcom/android/camera/scenerecognition/FilterClassifyLabel;-><init>()V

    .line 164
    .local v5, "label":Lcom/android/camera/scenerecognition/FilterClassifyLabel;
    const/4 v6, 0x0

    .line 165
    .local v6, "max":F
    const/4 v3, 0x0

    .line 166
    .local v3, "id":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultNum()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultID()[I

    move-result-object v7

    aget v7, v7, v2

    const/16 v8, 0x14

    if-eq v7, v8, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultID()[I

    move-result-object v7

    aget v7, v7, v2

    const/16 v8, 0x15

    if-eq v7, v8, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultID()[I

    move-result-object v7

    aget v7, v7, v2

    const/16 v8, 0x16

    if-eq v7, v8, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultID()[I

    move-result-object v7

    aget v7, v7, v2

    const/16 v8, 0x17

    if-eq v7, v8, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultID()[I

    move-result-object v7

    aget v7, v7, v2

    const/16 v8, 0x18

    if-eq v7, v8, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultID()[I

    move-result-object v7

    aget v7, v7, v2

    const/16 v8, 0x1f

    if-eq v7, v8, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultID()[I

    move-result-object v7

    aget v7, v7, v2

    const/16 v8, 0x23

    if-eq v7, v8, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultID()[I

    move-result-object v7

    aget v7, v7, v2

    const/16 v8, 0x24

    if-eq v7, v8, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultScore()[F

    move-result-object v7

    aget v7, v7, v2

    cmpl-float v7, v7, v6

    if-lez v7, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultScore()[F

    move-result-object v7

    aget v6, v7, v2

    .line 177
    move v3, v2

    .line 166
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultNum()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    .line 181
    invoke-static {}, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->values()[Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    move-result-object v8

    array-length v9, v8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_3

    aget-object v0, v8, v7

    .line 182
    .local v0, "filterLabel":Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;
    const/4 v1, 0x0

    .line 183
    .local v1, "filtered":Z
    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->getParentId()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultID()[I

    move-result-object v11

    aget v11, v11, v3

    if-ne v10, v11, :cond_2

    .line 184
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultNum()I

    move-result v10

    if-ge v4, v10, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultID()[I

    move-result-object v10

    aget v10, v10, v4

    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->getId()I

    move-result v11

    if-ne v10, v11, :cond_4

    .line 186
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultScore()[F

    move-result-object v10

    aget v10, v10, v4

    invoke-virtual {v0}, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->getScore()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    .line 187
    move v3, v4

    .line 188
    const/4 v1, 0x1

    .line 193
    .end local v4    # "j":I
    :cond_2
    if-eqz v1, :cond_5

    .line 196
    .end local v0    # "filterLabel":Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;
    .end local v1    # "filtered":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultID()[I

    move-result-object v7

    aget v7, v7, v3

    iput v7, v5, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mId:I

    .line 197
    invoke-virtual {p0}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;->getSCResultScore()[F

    move-result-object v7

    aget v7, v7, v3

    iput v7, v5, Lcom/android/camera/scenerecognition/FilterClassifyLabel;->mScore:F

    .line 198
    return-object v5

    .line 184
    .restart local v0    # "filterLabel":Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;
    .restart local v1    # "filtered":Z
    .restart local v4    # "j":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 181
    .end local v4    # "j":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public static getJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 121
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "utf-8"

    invoke-direct {v5, v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 123
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 124
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 130
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 126
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
