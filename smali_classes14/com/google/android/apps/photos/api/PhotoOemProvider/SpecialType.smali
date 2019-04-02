.class public final enum Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;
.super Ljava/lang/Enum;
.source "SpecialType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

.field public static final enum DEPTH_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

.field public static final enum DUAL_SIGHT_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

.field public static final enum G_DEPTH_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

.field public static final enum G_IMAGE_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

.field public static final enum LIVING_IMAGE_VIDEO_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

.field public static final enum NONE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

.field public static final enum PARALLAX_VIDEO_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

.field public static final enum UNKNOWN:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;


# instance fields
.field private final configuration:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final descriptionResourceId:I

.field private final editActivityClass:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final iconResourceId:I

.field private final interactActivityClass:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private launchActivityClass:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final nameResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 13
    new-instance v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->UNKNOWN:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    .line 15
    new-instance v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    const-string v1, "NONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->NONE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    .line 17
    new-instance v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    const-string v1, "DEPTH_TYPE"

    const/4 v2, 0x2

    const v3, 0x7f08021c

    const v4, 0x7f08021b

    const v5, 0x7f020083

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->EDIT:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;-><init>(Ljava/lang/String;IIIILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;)V

    sput-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->DEPTH_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    .line 25
    new-instance v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    const-string v1, "DUAL_SIGHT_TYPE"

    const/4 v2, 0x3

    const v3, 0x7f080335

    const v4, 0x7f08006d

    const v5, 0x7f020113

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->BADGE:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;-><init>(Ljava/lang/String;IIIILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;)V

    sput-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->DUAL_SIGHT_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    .line 35
    new-instance v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    const-string v1, "LIVING_IMAGE_VIDEO_TYPE"

    const/4 v2, 0x4

    const v3, 0x7f080352

    const v4, 0x7f080351

    const v5, 0x7f020142

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->BADGE:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;-><init>(Ljava/lang/String;IIIILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;)V

    sput-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->LIVING_IMAGE_VIDEO_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    .line 44
    new-instance v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    const-string v1, "PARALLAX_VIDEO_TYPE"

    const/4 v2, 0x5

    const v3, 0x7f08035e

    const v4, 0x7f08035d

    const v5, 0x7f020143

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->BADGE:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;-><init>(Ljava/lang/String;IIIILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;)V

    sput-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->PARALLAX_VIDEO_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    .line 56
    new-instance v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    const-string v1, "G_DEPTH_TYPE"

    const/4 v2, 0x6

    const v3, 0x7f0800a6

    const v4, 0x7f0800a5

    const v5, 0x7f02010b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->BADGE:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;-><init>(Ljava/lang/String;IIIILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;)V

    sput-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->G_DEPTH_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    .line 65
    new-instance v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    const-string v1, "G_IMAGE_TYPE"

    const/4 v2, 0x7

    const v3, 0x7f08021c

    const v4, 0x7f08021b

    const v5, 0x7f020083

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->BADGE:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;-><init>(Ljava/lang/String;IIIILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;)V

    sput-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->G_IMAGE_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    .line 11
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->UNKNOWN:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->NONE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->DEPTH_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->DUAL_SIGHT_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->LIVING_IMAGE_VIDEO_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->PARALLAX_VIDEO_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->G_DEPTH_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->G_IMAGE_TYPE:Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->$VALUES:[Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 114
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;-><init>(Ljava/lang/String;IIIILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;)V

    .line 122
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;)V
    .locals 0
    .param p3, "nameResourceId"    # I
    .param p4, "descriptionResourceId"    # I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "iconResourceId"    # I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "configuration"    # Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    .local p6, "editActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .local p7, "interactActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .local p8, "launchActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput p3, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->nameResourceId:I

    .line 130
    iput p4, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->descriptionResourceId:I

    .line 131
    iput p5, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->iconResourceId:I

    .line 132
    iput-object p6, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->editActivityClass:Ljava/lang/Class;

    .line 133
    iput-object p7, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->interactActivityClass:Ljava/lang/Class;

    .line 134
    iput-object p8, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->launchActivityClass:Ljava/lang/Class;

    .line 135
    iput-object p9, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->configuration:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    .line 137
    if-eqz p9, :cond_0

    .line 138
    invoke-virtual {p9, p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->validate(Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;)V

    .line 140
    :cond_0
    return-void
.end method

.method private static getActivityClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-nez p0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->$VALUES:[Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    invoke-virtual {v0}, [Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    return-object v0
.end method


# virtual methods
.method getConfiguration()Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->configuration:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->configuration:Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;

    return-object v0
.end method

.method getEditActivityClassName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->editActivityClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->getActivityClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getInteractActivityClassName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->interactActivityClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->getActivityClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLaunchActivityClassName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->launchActivityClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->getActivityClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
