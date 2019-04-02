.class public final enum Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;
.super Ljava/lang/Enum;
.source "SceneRecognitionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/scenerecognition/SceneRecognitionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterLabel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

.field public static final enum FilterLabel1:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

.field public static final enum FilterLabel2:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

.field public static final enum FilterLabel3:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

.field public static final enum FilterLabel4:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

.field public static final enum FilterLabel5:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

.field public static final enum FilterLabel6:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

.field public static final enum FilterLabel7:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

.field public static final enum FilterLabel8:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;


# instance fields
.field private mId:I

.field private mParentId:I

.field private mScore:F


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const v11, 0x3e4ccccd    # 0.2f

    const v10, 0x3dcccccd    # 0.1f

    const/4 v7, 0x6

    const v9, 0x3f333333    # 0.7f

    const/16 v3, 0x9

    .line 56
    new-instance v0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    const-string v1, "FilterLabel1"

    const/4 v2, 0x0

    const/16 v4, 0xc

    const v5, 0x3f733333    # 0.95f

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->FilterLabel1:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    .line 57
    new-instance v4, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    const-string v5, "FilterLabel2"

    const/4 v6, 0x1

    const/16 v8, 0x8

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;-><init>(Ljava/lang/String;IIIF)V

    sput-object v4, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->FilterLabel2:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    .line 58
    new-instance v0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    const-string v1, "FilterLabel3"

    const/4 v2, 0x2

    const/16 v4, 0xb

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->FilterLabel3:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    .line 59
    new-instance v0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    const-string v1, "FilterLabel4"

    const/4 v2, 0x3

    const/16 v4, 0x20

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->FilterLabel4:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    .line 60
    new-instance v0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    const-string v1, "FilterLabel5"

    const/4 v2, 0x4

    const/16 v4, 0x21

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->FilterLabel5:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    .line 61
    new-instance v0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    const-string v1, "FilterLabel6"

    const/4 v2, 0x5

    const/16 v4, 0xa

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->FilterLabel6:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    .line 62
    new-instance v5, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    const-string v6, "FilterLabel7"

    const/16 v9, 0x1e

    move v8, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;-><init>(Ljava/lang/String;IIIF)V

    sput-object v5, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->FilterLabel7:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    .line 63
    new-instance v0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    const-string v1, "FilterLabel8"

    const/4 v2, 0x7

    const/16 v3, 0xa

    const/16 v4, 0x1e

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->FilterLabel8:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    .line 55
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->FilterLabel1:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->FilterLabel2:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->FilterLabel3:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->FilterLabel4:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->FilterLabel5:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->FilterLabel6:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->FilterLabel7:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    aput-object v1, v0, v7

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->FilterLabel8:Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->$VALUES:[Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIF)V
    .locals 0
    .param p3, "parentId"    # I
    .param p4, "id"    # I
    .param p5, "score"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIF)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->mParentId:I

    .line 71
    iput p4, p0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->mId:I

    .line 72
    iput p5, p0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->mScore:F

    .line 73
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->$VALUES:[Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    invoke-virtual {v0}, [Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->mId:I

    return v0
.end method

.method public getParentId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->mParentId:I

    return v0
.end method

.method public getScore()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/camera/scenerecognition/SceneRecognitionUtil$FilterLabel;->mScore:F

    return v0
.end method
