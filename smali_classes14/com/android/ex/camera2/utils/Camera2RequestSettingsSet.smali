.class public Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;
.super Ljava/lang/Object;
.source "Camera2RequestSettingsSet.java"


# instance fields
.field private final mDictionary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRevision:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mRevision:J

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;)V
    .locals 2
    .param p1, "other"    # Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tried to copy null Camera2RequestSettingsSet"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    .line 63
    iget-wide v0, p1, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mRevision:J

    iput-wide v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mRevision:J

    .line 64
    return-void
.end method

.method private setRequestFieldIfNonNull(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)V
    .locals 1
    .param p1, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p2, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    invoke-virtual {p0, p2}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    .line 249
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 252
    :cond_0
    return-void
.end method


# virtual methods
.method public contains(Landroid/hardware/camera2/CaptureRequest$Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    if-nez p1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Received a null key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public varargs createRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;
    .locals 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "template"    # I
    .param p3, "targets"    # [Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 231
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Tried to create request using null CameraDevice"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 234
    :cond_0
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 235
    .local v1, "reqBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v3, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 236
    .local v0, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    invoke-direct {p0, v1, v0}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->setRequestFieldIfNonNull(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)V

    goto :goto_0

    .line 238
    .end local v0    # "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    :cond_1
    array-length v4, p3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v2, p3, v3

    .line 239
    .local v2, "target":Landroid/view/Surface;
    if-nez v2, :cond_2

    .line 240
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Tried to add null Surface as request target"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 242
    :cond_2
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 238
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 244
    .end local v2    # "target":Landroid/view/Surface;
    :cond_3
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    return-object v3
.end method

.method public get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    if-nez p1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Received a null key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRevision()J
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mRevision:J

    return-wide v0
.end method

.method public matches(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Received a null key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, "currentValue":Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-wide v2, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mRevision:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mRevision:J

    .line 93
    const/4 v1, 0x1

    .line 95
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public union(Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;)Z
    .locals 4
    .param p1, "moreSettings"    # Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    .prologue
    .line 206
    if-eqz p1, :cond_0

    if-ne p1, p0, :cond_1

    .line 207
    :cond_0
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 211
    iget-wide v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mRevision:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mRevision:J

    .line 212
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unset(Landroid/hardware/camera2/CaptureRequest$Key;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    if-nez p1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Received a null key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-wide v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mRevision:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mRevision:J

    .line 119
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
