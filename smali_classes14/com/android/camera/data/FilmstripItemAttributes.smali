.class public Lcom/android/camera/data/FilmstripItemAttributes;
.super Ljava/lang/Object;
.source "FilmstripItemAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/FilmstripItemAttributes$Builder;,
        Lcom/android/camera/data/FilmstripItemAttributes$Attributes;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/android/camera/data/FilmstripItemAttributes;


# instance fields
.field private final mAttributes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/camera/data/FilmstripItemAttributes$Attributes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    invoke-direct {v0}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;-><init>()V

    .line 42
    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->build()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/FilmstripItemAttributes;->DEFAULT:Lcom/android/camera/data/FilmstripItemAttributes;

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/camera/data/FilmstripItemAttributes$Attributes;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "attributes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/camera/data/FilmstripItemAttributes$Attributes;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/camera/data/FilmstripItemAttributes;->mAttributes:Ljava/util/EnumSet;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumSet;Lcom/android/camera/data/FilmstripItemAttributes$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/EnumSet;
    .param p2, "x1"    # Lcom/android/camera/data/FilmstripItemAttributes$1;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/camera/data/FilmstripItemAttributes;-><init>(Ljava/util/EnumSet;)V

    return-void
.end method


# virtual methods
.method public canDelete()Z
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes;->mAttributes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_DELETE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public canEdit()Z
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes;->mAttributes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_EDIT:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public canShare()Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes;->mAttributes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_SHARE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public canSwipeAway()Z
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes;->mAttributes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_SWIPE_AWAY:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public canZoomInPlace()Z
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes;->mAttributes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_ZOOM_IN_PLACE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasDetailedCaptureInfo()Z
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes;->mAttributes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->HAS_DETAILED_CAPTURE_INFO:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isImage()Z
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes;->mAttributes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_IMAGE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRendering()Z
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes;->mAttributes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_RENDERING:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVideo()Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes;->mAttributes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_VIDEO:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
