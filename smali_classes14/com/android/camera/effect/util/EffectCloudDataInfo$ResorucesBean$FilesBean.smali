.class public Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;
.super Ljava/lang/Object;
.source "EffectCloudDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilesBean"
.end annotation


# instance fields
.field private checksum:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChecksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->checksum:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setChecksum(Ljava/lang/String;)V
    .locals 0
    .param p1, "checksum"    # Ljava/lang/String;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->checksum:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->contentType:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->link:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->name:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->type:Ljava/lang/String;

    .line 248
    return-void
.end method
