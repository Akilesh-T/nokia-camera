.class public Lcom/android/camera/livebroadcast/status/Reactions;
.super Ljava/lang/Object;
.source "Reactions.java"


# instance fields
.field private mID:Ljava/lang/String;

.field private mThumbnailURL:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "thumbnailURL"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/camera/livebroadcast/status/Reactions;->mID:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/android/camera/livebroadcast/status/Reactions;->mType:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/android/camera/livebroadcast/status/Reactions;->mThumbnailURL:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/Reactions;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/Reactions;->mThumbnailURL:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/Reactions;->mType:Ljava/lang/String;

    return-object v0
.end method
