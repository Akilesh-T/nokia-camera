.class public Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;
.super Ljava/lang/Object;
.source "CameraConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private facing:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

.field private focusMode:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$FocusMode;

.field private fps:I

.field private height:I

.field private orientation:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v0, 0x500

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->height:I

    .line 58
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->width:I

    .line 59
    const/16 v0, 0xf

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->fps:I

    .line 60
    sget-object v0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->DEFAULT_FACING:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->facing:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    .line 61
    sget-object v0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->DEFAULT_ORIENTATION:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->orientation:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;

    .line 62
    sget-object v0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->DEFAULT_FOCUSMODE:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$FocusMode;

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->focusMode:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$FocusMode;

    return-void
.end method

.method static synthetic access$000(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;

    .prologue
    .line 56
    iget v0, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->height:I

    return v0
.end method

.method static synthetic access$100(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;

    .prologue
    .line 56
    iget v0, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->width:I

    return v0
.end method

.method static synthetic access$200(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;)Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->facing:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    return-object v0
.end method

.method static synthetic access$300(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;

    .prologue
    .line 56
    iget v0, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->fps:I

    return v0
.end method

.method static synthetic access$400(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;)Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->orientation:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;)Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$FocusMode;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->focusMode:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$FocusMode;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;-><init>(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$1;)V

    return-object v0
.end method

.method public setFacing(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;)Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;
    .locals 0
    .param p1, "facing"    # Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->facing:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    .line 72
    return-object p0
.end method

.method public setFocusMode(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$FocusMode;)Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;
    .locals 0
    .param p1, "focusMode"    # Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$FocusMode;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->focusMode:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$FocusMode;

    .line 87
    return-object p0
.end method

.method public setFps(I)Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;
    .locals 0
    .param p1, "fps"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->fps:I

    .line 82
    return-object p0
.end method

.method public setOrientation(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;)Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;
    .locals 0
    .param p1, "orientation"    # Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->orientation:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;

    .line 77
    return-object p0
.end method

.method public setPreview(II)Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;
    .locals 0
    .param p1, "height"    # I
    .param p2, "width"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->height:I

    .line 66
    iput p2, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->width:I

    .line 67
    return-object p0
.end method
