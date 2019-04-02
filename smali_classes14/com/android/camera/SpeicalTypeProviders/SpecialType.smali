.class public final enum Lcom/android/camera/SpeicalTypeProviders/SpecialType;
.super Ljava/lang/Enum;
.source "SpecialType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/SpeicalTypeProviders/SpecialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/SpeicalTypeProviders/SpecialType;

.field public static final enum DEPTH_TYPE:Lcom/android/camera/SpeicalTypeProviders/SpecialType;

.field public static final enum DUAL_SIGHT_TYPE:Lcom/android/camera/SpeicalTypeProviders/SpecialType;

.field public static final enum NONE:Lcom/android/camera/SpeicalTypeProviders/SpecialType;

.field public static final enum UNKNOWN:Lcom/android/camera/SpeicalTypeProviders/SpecialType;


# instance fields
.field private final configuration:Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;
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
    new-instance v0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SpeicalTypeProviders/SpecialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->UNKNOWN:Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    .line 15
    new-instance v0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    const-string v1, "NONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SpeicalTypeProviders/SpecialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->NONE:Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    .line 17
    new-instance v0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    const-string v1, "DEPTH_TYPE"

    const/4 v2, 0x2

    const v3, 0x7f08021c

    const v4, 0x7f08021b

    const v5, 0x7f020083

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->EDIT:Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/SpeicalTypeProviders/SpecialType;-><init>(Ljava/lang/String;IIIILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;)V

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->DEPTH_TYPE:Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    .line 25
    new-instance v0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    const-string v1, "DUAL_SIGHT_TYPE"

    const/4 v2, 0x3

    const v3, 0x7f080335

    const v4, 0x7f08006d

    const v5, 0x7f020113

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->BADGE:Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/SpeicalTypeProviders/SpecialType;-><init>(Ljava/lang/String;IIIILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;)V

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->DUAL_SIGHT_TYPE:Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->UNKNOWN:Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->NONE:Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->DEPTH_TYPE:Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->DUAL_SIGHT_TYPE:Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->$VALUES:[Lcom/android/camera/SpeicalTypeProviders/SpecialType;

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

    .line 73
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/SpeicalTypeProviders/SpecialType;-><init>(Ljava/lang/String;IIIILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;)V

    .line 81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;)V
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
    .param p9, "configuration"    # Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;
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
            "Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    .local p6, "editActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .local p7, "interactActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .local p8, "launchActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput p3, p0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->nameResourceId:I

    .line 89
    iput p4, p0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->descriptionResourceId:I

    .line 90
    iput p5, p0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->iconResourceId:I

    .line 91
    iput-object p6, p0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->editActivityClass:Ljava/lang/Class;

    .line 92
    iput-object p7, p0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->interactActivityClass:Ljava/lang/Class;

    .line 93
    iput-object p8, p0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->launchActivityClass:Ljava/lang/Class;

    .line 94
    iput-object p9, p0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->configuration:Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

    .line 96
    if-eqz p9, :cond_0

    .line 97
    invoke-virtual {p9, p0}, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->validate(Lcom/android/camera/SpeicalTypeProviders/SpecialType;)V

    .line 99
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
    .line 125
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-nez p0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/SpeicalTypeProviders/SpecialType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/SpeicalTypeProviders/SpecialType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->$VALUES:[Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    invoke-virtual {v0}, [Lcom/android/camera/SpeicalTypeProviders/SpecialType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    return-object v0
.end method


# virtual methods
.method getConfiguration()Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->configuration:Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->configuration:Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;

    return-object v0
.end method

.method getEditActivityClassName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->editActivityClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->getActivityClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getInteractActivityClassName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->interactActivityClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->getActivityClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLaunchActivityClassName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->launchActivityClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->getActivityClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
