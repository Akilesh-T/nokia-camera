.class public Lcom/android/camera/effect/util/EffectDataInfo;
.super Ljava/lang/Object;
.source "EffectDataInfo.java"


# instance fields
.field private animojiCheckSum:Ljava/lang/String;

.field private cloudAbandoned:Z

.field private from:Ljava/lang/String;

.field private iconCheckSum:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private resourceId:Ljava/lang/String;

.field private resourceUrl:Ljava/lang/String;

.field private shelfId:Ljava/lang/String;

.field private stickerCheckSum:Ljava/lang/String;

.field private stickerResourceUrl:Ljava/lang/String;

.field private themeCheckSum:Ljava/lang/String;

.field private themeResourceUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnimojiCheckSum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectDataInfo;->animojiCheckSum:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectDataInfo;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getIconCheckSum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectDataInfo;->iconCheckSum:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectDataInfo;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectDataInfo;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectDataInfo;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectDataInfo;->resourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getShelfId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectDataInfo;->shelfId:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerCheckSum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectDataInfo;->stickerCheckSum:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerResourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectDataInfo;->stickerResourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeCheckSum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectDataInfo;->themeCheckSum:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeResourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectDataInfo;->themeResourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isCloudAbandoned()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/camera/effect/util/EffectDataInfo;->cloudAbandoned:Z

    return v0
.end method

.method public setAnimojiCheckSum(Ljava/lang/String;)V
    .locals 0
    .param p1, "animojiCheckSum"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectDataInfo;->animojiCheckSum:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setCloudAbandoned(Z)V
    .locals 0
    .param p1, "cloudAbandoned"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/android/camera/effect/util/EffectDataInfo;->cloudAbandoned:Z

    .line 133
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectDataInfo;->from:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setIconCheckSum(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconCheckSum"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectDataInfo;->iconCheckSum:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectDataInfo;->iconUrl:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectDataInfo;->key:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceId"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectDataInfo;->resourceId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setResourceUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceUrl"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectDataInfo;->resourceUrl:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setShelfId(Ljava/lang/String;)V
    .locals 0
    .param p1, "shelfId"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectDataInfo;->shelfId:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setStickerCheckSum(Ljava/lang/String;)V
    .locals 0
    .param p1, "stickerCheckSum"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectDataInfo;->stickerCheckSum:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setStickerResourceUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "stickerResourceUrl"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectDataInfo;->stickerResourceUrl:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setThemeCheckSum(Ljava/lang/String;)V
    .locals 0
    .param p1, "themeCheckSum"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectDataInfo;->themeCheckSum:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setThemeResourceUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "themeResourceUrl"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectDataInfo;->themeResourceUrl:Ljava/lang/String;

    .line 125
    return-void
.end method
