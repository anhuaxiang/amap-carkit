.class public Lcom/alibaba/wireless/security/framework/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/wireless/security/framework/ISGPluginManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wireless/security/framework/e$j;
    }
.end annotation


# static fields
.field private static t:Ljava/lang/Boolean; = null

.field private static u:Ljava/lang/Boolean; = null

.field private static v:[Ljava/lang/String; = null

.field private static w:Ljava/lang/String; = null

.field private static volatile x:Z = true


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wireless/security/framework/d;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alibaba/wireless/security/framework/IRouterComponent;

.field g:Lcom/alibaba/wireless/security/framework/utils/b;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private volatile k:Lcom/alibaba/wireless/security/framework/c;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Ljava/io/File;

.field private r:Ljava/io/File;

.field private s:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const-string v0, "arm64-v8a"

    const-string v1, "x86_64"

    const-string v2, "armeabi"

    const-string v3, "armeabi-v7a"

    const-string v4, "x86"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/wireless/security/framework/e;->v:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->a:Landroid/os/HandlerThread;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/wireless/security/framework/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/wireless/security/framework/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->f:Lcom/alibaba/wireless/security/framework/IRouterComponent;

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/framework/e;->h:Z

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->k:Lcom/alibaba/wireless/security/framework/c;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/wireless/security/framework/e;->l:Z

    iput-boolean v2, p0, Lcom/alibaba/wireless/security/framework/e;->m:Z

    iput-boolean v2, p0, Lcom/alibaba/wireless/security/framework/e;->n:Z

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/framework/e;->o:Z

    iput-boolean v2, p0, Lcom/alibaba/wireless/security/framework/e;->p:Z

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->q:Ljava/io/File;

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->r:Ljava/io/File;

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->s:Ljava/io/File;

    return-void
.end method

.method public static synthetic a(Lcom/alibaba/wireless/security/framework/e;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    return-object p0
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/wireless/security/framework/e$j;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    .line 2
    const-string v0, ""

    :try_start_2
    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p2, Lcom/alibaba/wireless/security/framework/e$j;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x85

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_15

    goto :goto_6f

    :catchall_15
    move-exception v1

    const v3, 0x186cb

    const/16 v4, 0x85

    const-string v5, "getPackageArchiveInfo failed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/alibaba/wireless/security/framework/e$j;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p2, Lcom/alibaba/wireless/security/framework/e$j;->c:Ljava/io/File;

    if-eqz v1, :cond_53

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_54

    :cond_53
    move-object v8, v0

    :goto_54
    move-object v2, p0

    move-object v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/alibaba/wireless/security/framework/e$j;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6e

    iget-object v1, p2, Lcom/alibaba/wireless/security/framework/e$j;->a:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/alibaba/wireless/security/framework/e;->e(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_6e

    iget-object v1, p2, Lcom/alibaba/wireless/security/framework/e$j;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_6e
    const/4 v1, 0x0

    :goto_6f
    if-nez v1, :cond_b8

    const v3, 0x186cb

    const/16 v4, 0x86

    const-string v5, "packageInfo == null"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p2, Lcom/alibaba/wireless/security/framework/e$j;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p2, Lcom/alibaba/wireless/security/framework/e$j;->c:Ljava/io/File;

    if-eqz p1, :cond_a7

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_a7
    move-object v8, v0

    invoke-direct {p0}, Lcom/alibaba/wireless/security/framework/e;->i()Ljava/lang/String;

    move-result-object v9

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 p2, 0x86

    invoke-direct {p1, p2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw p1

    :cond_b8
    return-object v1
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/wireless/security/framework/e$j;Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/wireless/security/framework/d;
    .registers 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    .line 3
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v8, p4

    const-string v12, "1_3"

    const-string v13, "1_2"

    const-string v1, "so-"

    const-string v7, "1_1"

    invoke-static {}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->get_currentFuncName()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->get_currentTime()J

    move-result-wide v2

    iget-object v4, v11, Lcom/alibaba/wireless/security/framework/e$j;->a:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    iget-object v4, v11, Lcom/alibaba/wireless/security/framework/e$j;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v4

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Lcom/alibaba/wireless/security/framework/e$j;->a:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    div-long v12, v17, v19

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".pkgInfo"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v12, Lcom/alibaba/wireless/security/framework/a;

    invoke-direct {v12, v4}, Lcom/alibaba/wireless/security/framework/a;-><init>(Ljava/lang/String;)V

    const-string v4, "1_0"

    invoke-static {v10, v4}, Lcom/alibaba/wireless/security/framework/ApmMonitorAdapter;->jstageStart(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v17, 0x0

    :try_start_63
    invoke-virtual {v12}, Lcom/alibaba/wireless/security/framework/a;->b()Z

    move-result v5
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_795

    const-string v13, "thirdpartyso"

    move-object/from16 v20, v6

    const-string v6, "pluginclass"

    move-object/from16 v23, v15

    const-string v15, "hasso"

    move-object/from16 v24, v1

    const-string v1, "keepaliveprocs"

    move-object/from16 v25, v7

    const-string v7, "dependencies"

    move-wide/from16 v26, v2

    const-string v2, ""

    if-eqz v5, :cond_ec

    :try_start_7f
    iget-object v5, v9, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/alibaba/wireless/security/framework/utils/e;->c(Landroid/content/Context;)Z

    move-result v5
    :try_end_85
    .catchall {:try_start_7f .. :try_end_85} :catchall_e7

    if-nez v5, :cond_ec

    :try_start_87
    invoke-virtual {v12}, Lcom/alibaba/wireless/security/framework/a;->a()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_ec

    const-string v3, "version"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_93
    .catch Lorg/json/JSONException; {:try_start_87 .. :try_end_93} :catch_dd
    .catchall {:try_start_87 .. :try_end_93} :catchall_db

    :try_start_93
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30
    :try_end_97
    .catch Lorg/json/JSONException; {:try_start_93 .. :try_end_97} :catch_d4
    .catchall {:try_start_93 .. :try_end_97} :catchall_d0

    move-object/from16 v31, v3

    :try_start_99
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_9d
    .catch Lorg/json/JSONException; {:try_start_99 .. :try_end_9d} :catch_cd
    .catchall {:try_start_99 .. :try_end_9d} :catchall_cb

    :try_start_9d
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_a4

    const/4 v3, 0x0

    :cond_a4
    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32
    :try_end_b0
    .catch Lorg/json/JSONException; {:try_start_9d .. :try_end_b0} :catch_c9
    .catchall {:try_start_9d .. :try_end_b0} :catchall_c9

    :try_start_b0
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33
    :try_end_b4
    .catch Lorg/json/JSONException; {:try_start_b0 .. :try_end_b4} :catch_c4
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_c2

    :try_start_b4
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5
    :try_end_bc
    .catch Lorg/json/JSONException; {:try_start_b4 .. :try_end_bc} :catch_c0
    .catchall {:try_start_b4 .. :try_end_bc} :catchall_c0

    move-object/from16 v16, v5

    const/4 v5, 0x1

    goto :goto_f6

    :catch_c0
    :catchall_c0
    nop

    goto :goto_c7

    :catchall_c2
    nop

    goto :goto_c5

    :catch_c4
    nop

    :goto_c5
    const/16 v33, 0x0

    :goto_c7
    const/4 v5, 0x0

    goto :goto_f6

    :catch_c9
    :catchall_c9
    nop

    goto :goto_e3

    :catchall_cb
    nop

    goto :goto_ce

    :catch_cd
    nop

    :goto_ce
    const/4 v3, 0x0

    goto :goto_e3

    :catchall_d0
    move-object/from16 v31, v3

    nop

    goto :goto_d7

    :catch_d4
    move-object/from16 v31, v3

    nop

    :goto_d7
    const/4 v3, 0x0

    const/16 v30, 0x0

    goto :goto_e3

    :catchall_db
    nop

    goto :goto_de

    :catch_dd
    nop

    :goto_de
    const/4 v3, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_e3
    move-object/from16 v32, v16

    const/4 v5, 0x0

    goto :goto_f4

    :catchall_e7
    move-exception v0

    move-object v1, v0

    move-object v13, v11

    goto/16 :goto_798

    :cond_ec
    move-object/from16 v32, v16

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_f4
    const/16 v33, 0x0

    :goto_f6
    if-nez v5, :cond_14a

    :try_start_f8
    invoke-direct {v9, v10, v11, v8}, Lcom/alibaba/wireless/security/framework/e;->a(Ljava/lang/String;Lcom/alibaba/wireless/security/framework/e$j;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_fe
    .catchall {:try_start_f8 .. :try_end_fe} :catchall_143

    move-object/from16 v34, v2

    :try_start_100
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v16, v1

    const/4 v1, 0x0

    invoke-virtual {v7, v15, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v6, 0x0

    invoke-virtual {v1, v13, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v3, v12, Lcom/alibaba/wireless/security/framework/a;->c:Landroid/content/pm/PackageInfo;

    invoke-virtual {v12, v3, v10}, Lcom/alibaba/wireless/security/framework/a;->a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    :try_end_139
    .catchall {:try_start_100 .. :try_end_139} :catchall_140

    move-object v7, v2

    move-object v13, v5

    move-object/from16 v3, v16

    move-object/from16 v16, v1

    goto :goto_150

    :catchall_140
    move-exception v0

    move-object v1, v0

    goto :goto_16a

    :catchall_143
    move-exception v0

    :goto_144
    move-object v1, v0

    move-object v13, v11

    :goto_146
    move-object/from16 v5, v31

    goto/16 :goto_799

    :cond_14a
    move-object/from16 v34, v2

    move-object/from16 v7, v30

    move-object/from16 v13, v31

    :goto_150
    :try_start_150
    invoke-static {v10, v4}, Lcom/alibaba/wireless/security/framework/ApmMonitorAdapter;->jstageEnd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_153
    .catchall {:try_start_150 .. :try_end_153} :catchall_78e

    if-eqz v10, :cond_16d

    :try_start_155
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/wireless/security/framework/e;->getMainPluginName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16d

    invoke-static {}, Lcom/alibaba/wireless/security/framework/SGApmMonitorManager;->getInstance()Lcom/alibaba/wireless/security/framework/SGApmMonitorManager;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/alibaba/wireless/security/framework/SGApmMonitorManager;->setMainPluginVersion(Ljava/lang/String;)V
    :try_end_166
    .catchall {:try_start_155 .. :try_end_166} :catchall_167

    goto :goto_16d

    :catchall_167
    move-exception v0

    move-object v1, v0

    move-object v5, v13

    :goto_16a
    move-object v13, v11

    goto/16 :goto_799

    :cond_16d
    :goto_16d
    :try_start_16d
    invoke-static {v10, v4}, Lcom/alibaba/wireless/security/framework/ApmMonitorAdapter;->jstageEnd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "getPackageInfo"

    move-wide/from16 v4, v26

    invoke-static {v10, v14, v1, v4, v5}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->printTimeCost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->get_currentTime()J

    move-result-wide v5

    iget-boolean v1, v9, Lcom/alibaba/wireless/security/framework/e;->o:Z
    :try_end_17d
    .catchall {:try_start_16d .. :try_end_17d} :catchall_78e

    if-eqz v1, :cond_1ba

    if-eqz v3, :cond_1ba

    :try_start_181
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/wireless/security/framework/e;->getMainPluginName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ba

    const-string v1, ";"

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Lcom/alibaba/wireless/security/framework/utils/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1ba

    if-eqz v1, :cond_1ba

    const/4 v4, 0x0

    :goto_19a
    array-length v15, v1

    if-ge v4, v15, :cond_1ba

    aget-object v15, v1, v4

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v26

    if-nez v26, :cond_1ab

    :cond_1a9
    const/4 v15, 0x1

    goto :goto_1b7

    :cond_1ab
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1a9

    const/4 v15, 0x1

    iput-boolean v15, v9, Lcom/alibaba/wireless/security/framework/e;->m:Z

    iput-boolean v15, v9, Lcom/alibaba/wireless/security/framework/e;->n:Z
    :try_end_1b6
    .catchall {:try_start_181 .. :try_end_1b6} :catchall_167

    goto :goto_1bb

    :goto_1b7
    add-int/lit8 v4, v4, 0x1

    goto :goto_19a

    :cond_1ba
    const/4 v15, 0x1

    :goto_1bb
    :try_start_1bb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MockTaobaoChannel - keepAliveProcs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->i(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MockTaobaoChannel - isKeepAliveProcess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v9, Lcom/alibaba/wireless/security/framework/e;->m:Z
    :try_end_1db
    .catchall {:try_start_1bb .. :try_end_1db} :catchall_78e

    if-eqz v2, :cond_1e0

    const-string v2, "yes"

    goto :goto_1e2

    :cond_1e0
    const-string v2, "no"

    :goto_1e2
    :try_start_1e2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->i(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MockTaobaoChannel - pluginName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->i(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_21d
    .catchall {:try_start_1e2 .. :try_end_21d} :catchall_78e

    const-string v3, "->"

    if-nez v1, :cond_224

    move-object v1, v4

    :goto_222
    const/4 v2, 0x0

    goto :goto_237

    :cond_224
    :try_start_224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_222

    :goto_237
    invoke-direct {v9, v7, v1, v2}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1
    :try_end_23b
    .catchall {:try_start_224 .. :try_end_23b} :catchall_78e

    const-string v15, "src:"

    move-object/from16 v26, v12

    const-string v12, "zipfile:"

    if-nez v1, :cond_2ab

    const v2, 0x186cb

    const/16 v5, 0x88

    const-string v6, "loadRequirements failed"

    :try_start_24a
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_252

    move-object v8, v4

    goto :goto_265

    :cond_252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    :goto_265
    iget-object v1, v11, Lcom/alibaba/wireless/security/framework/e$j;->c:Ljava/io/File;

    if-eqz v1, :cond_27f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/alibaba/wireless/security/framework/e$j;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_27b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_292

    :cond_27f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/alibaba/wireless/security/framework/e$j;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_27b

    :goto_292
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, ""

    move-object/from16 v1, p0

    move v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v12

    move-object v8, v14

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v2, 0x88

    invoke-direct {v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v1
    :try_end_2ab
    .catchall {:try_start_24a .. :try_end_2ab} :catchall_167

    :cond_2ab
    :try_start_2ab
    invoke-direct {v9, v10, v13}, Lcom/alibaba/wireless/security/framework/e;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2ae
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_2ab .. :try_end_2ae} :catch_723
    .catchall {:try_start_2ab .. :try_end_2ae} :catchall_78e

    move-object/from16 v1, v25

    :try_start_2b0
    invoke-static {v10, v1}, Lcom/alibaba/wireless/security/framework/ApmMonitorAdapter;->jstageStart(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25
    :try_end_2b7
    .catchall {:try_start_2b0 .. :try_end_2b7} :catchall_78e

    if-eqz v25, :cond_38e

    :try_start_2b9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v1

    const-string v1, "libsg"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v24, v3

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    iget-object v3, v11, Lcom/alibaba/wireless/security/framework/e$j;->c:Ljava/io/File;

    iget-boolean v2, v11, Lcom/alibaba/wireless/security/framework/e$j;->d:Z
    :try_end_2f6
    .catchall {:try_start_2b9 .. :try_end_2f6} :catchall_387

    move-object/from16 v31, v13

    move-object/from16 v13, v25

    move-object/from16 v1, p0

    move/from16 v25, v2

    move-object/from16 v35, v34

    const/16 v29, 0x0

    move-object/from16 v2, v23

    move-object/from16 v28, v14

    move-object/from16 v14, v24

    move-object/from16 v24, v3

    move-object/from16 v3, v20

    move-object v10, v4

    move-object/from16 v4, v24

    move-wide/from16 v36, v5

    move-object/from16 v5, v27

    move-object/from16 v38, v20

    move/from16 v6, v25

    :try_start_317
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/wireless/security/framework/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v1
    :try_end_31b
    .catchall {:try_start_317 .. :try_end_31b} :catchall_407

    if-nez v1, :cond_382

    const v2, 0x186cb

    const/16 v3, 0x6b

    const-string v4, ""

    :try_start_324
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_32c

    move-object v6, v10

    goto :goto_33f

    :cond_32c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    :goto_33f
    iget-object v1, v11, Lcom/alibaba/wireless/security/framework/e$j;->c:Ljava/io/File;

    if-eqz v1, :cond_359

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/alibaba/wireless/security/framework/e$j;->c:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_355
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36c

    :cond_359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/alibaba/wireless/security/framework/e$j;->a:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_355

    :goto_36c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    move-object/from16 v1, p0

    move-object v5, v7

    move-object v7, v8

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v2, 0x6b

    invoke-direct {v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v1
    :try_end_382
    .catchall {:try_start_324 .. :try_end_382} :catchall_407

    :cond_382
    move-object/from16 v5, v27

    move-object/from16 v6, v30

    goto :goto_3a0

    :catchall_387
    move-exception v0

    move-object/from16 v31, v13

    :goto_38a
    move-object/from16 v10, p1

    goto/16 :goto_144

    :cond_38e
    move-object v10, v4

    move-wide/from16 v36, v5

    move-object/from16 v31, v13

    move-object/from16 v28, v14

    move-object/from16 v38, v20

    move-object/from16 v35, v34

    const/16 v29, 0x0

    move-object v13, v1

    move-object v14, v3

    move-object/from16 v5, v35

    move-object v6, v5

    :goto_3a0
    if-nez v33, :cond_409

    const v2, 0x186cb

    const/16 v3, 0x8a

    const-string v4, "miss pluginclass"

    :try_start_3a9
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3b1

    move-object v6, v10

    goto :goto_3c4

    :cond_3b1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    :goto_3c4
    iget-object v1, v11, Lcom/alibaba/wireless/security/framework/e$j;->c:Ljava/io/File;

    if-eqz v1, :cond_3de

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/alibaba/wireless/security/framework/e$j;->c:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_3da
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f1

    :cond_3de
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/alibaba/wireless/security/framework/e$j;->a:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3da

    :goto_3f1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    move-object/from16 v1, p0

    move-object v5, v7

    move-object v7, v8

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v2, 0x8a

    invoke-direct {v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v1
    :try_end_407
    .catchall {:try_start_3a9 .. :try_end_407} :catchall_407

    :catchall_407
    move-exception v0

    goto :goto_38a

    :cond_409
    move-object v4, v10

    move-object/from16 v10, p1

    :try_start_40c
    invoke-static {v10, v13}, Lcom/alibaba/wireless/security/framework/ApmMonitorAdapter;->jstageEnd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v1, "extractSoInPlugin"

    move-object/from16 v24, v5

    move-object/from16 v20, v6

    move-object/from16 v3, v28

    move-wide/from16 v5, v36

    invoke-static {v10, v3, v1, v5, v6}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->printTimeCost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->get_currentTime()J

    move-result-wide v1

    move-object/from16 v6, v22

    invoke-static {v10, v6}, Lcom/alibaba/wireless/security/framework/ApmMonitorAdapter;->jstageStart(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, v11, Lcom/alibaba/wireless/security/framework/e$j;->d:Z

    move-object/from16 v22, v6

    move-object/from16 v6, v23

    move-object/from16 v23, v7

    move-object/from16 v7, v38

    invoke-direct {v9, v6, v7, v5}, Lcom/alibaba/wireless/security/framework/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v9, v5, v13}, Lcom/alibaba/wireless/security/framework/e;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v25

    move-object/from16 v27, v5

    const-string v5, "createClassLoader"

    invoke-static {v10, v3, v5, v1, v2}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->printTimeCost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->get_currentTime()J

    move-result-wide v1
    :try_end_446
    .catchall {:try_start_40c .. :try_end_446} :catchall_720

    if-nez v25, :cond_4c5

    :try_start_448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed from plugin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->i(Ljava/lang/String;)V
    :try_end_461
    .catchall {:try_start_448 .. :try_end_461} :catchall_143

    const v2, 0x186cb

    const/16 v3, 0x8b

    const-string v5, "clazz == null"

    :try_start_468
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_470

    move-object v6, v4

    goto :goto_483

    :cond_470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    :goto_483
    iget-object v1, v11, Lcom/alibaba/wireless/security/framework/e$j;->c:Ljava/io/File;

    if-eqz v1, :cond_49d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Lcom/alibaba/wireless/security/framework/e$j;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_499
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4b0

    :cond_49d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Lcom/alibaba/wireless/security/framework/e$j;->a:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_499

    :goto_4b0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move-object v4, v5

    move-object/from16 v5, v23

    move-object v8, v13

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v2, 0x8b

    invoke-direct {v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v1
    :try_end_4c5
    .catchall {:try_start_468 .. :try_end_4c5} :catchall_143

    :cond_4c5
    :try_start_4c5
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5
    :try_end_4c9
    .catch Ljava/lang/InstantiationException; {:try_start_4c5 .. :try_end_4c9} :catch_713
    .catch Ljava/lang/IllegalAccessException; {:try_start_4c5 .. :try_end_4c9} :catch_710
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_4c5 .. :try_end_4c9} :catch_5f5
    .catchall {:try_start_4c5 .. :try_end_4c9} :catchall_5f0

    :try_start_4c9
    move-object v13, v5

    check-cast v13, Lcom/alibaba/wireless/security/open/initialize/ISecurityGuardPlugin;

    new-instance v28, Lcom/alibaba/wireless/security/framework/d;
    :try_end_4ce
    .catch Ljava/lang/InstantiationException; {:try_start_4c9 .. :try_end_4ce} :catch_5eb
    .catch Ljava/lang/IllegalAccessException; {:try_start_4c9 .. :try_end_4ce} :catch_5e6
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_4c9 .. :try_end_4ce} :catch_5f5
    .catchall {:try_start_4c9 .. :try_end_4ce} :catchall_5f0

    move-object/from16 v30, v12

    move-wide v11, v1

    move-object/from16 v1, v28

    move-object v2, v6

    move-object v6, v3

    move-object/from16 v3, p0

    move-object v5, v4

    move-object/from16 v4, p1

    move-object/from16 v36, v5

    move-object/from16 v33, v15

    move-object/from16 v15, v24

    move-object/from16 v34, v27

    move-object/from16 v5, v34

    move-object/from16 v37, v14

    move-object/from16 v8, v22

    move-object v14, v6

    move-object/from16 v6, v26

    move-object/from16 v38, v15

    move-object v15, v7

    move-object v7, v13

    :try_start_4ef
    invoke-direct/range {v1 .. v7}, Lcom/alibaba/wireless/security/framework/d;-><init>(Ljava/lang/String;Lcom/alibaba/wireless/security/framework/ISGPluginManager;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/alibaba/wireless/security/framework/a;Lcom/alibaba/wireless/security/open/initialize/ISecurityGuardPlugin;)V
    :try_end_4f2
    .catch Ljava/lang/InstantiationException; {:try_start_4ef .. :try_end_4f2} :catch_5eb
    .catch Ljava/lang/IllegalAccessException; {:try_start_4ef .. :try_end_4f2} :catch_5e6
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_4ef .. :try_end_4f2} :catch_5e4
    .catchall {:try_start_4ef .. :try_end_4f2} :catchall_5f0

    :try_start_4f2
    iget-boolean v1, v9, Lcom/alibaba/wireless/security/framework/e;->h:Z

    iget-boolean v2, v9, Lcom/alibaba/wireless/security/framework/e;->m:Z

    if-eqz v2, :cond_4fa

    or-int/lit8 v1, v1, 0x20

    :cond_4fa
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/wireless/security/framework/e;->getMainPluginName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v2, :cond_58a

    iget-boolean v2, v9, Lcom/alibaba/wireless/security/framework/e;->l:Z

    if-eqz v2, :cond_50c

    or-int/lit8 v1, v1, 0x2

    :cond_50c
    iget-object v2, v9, Lcom/alibaba/wireless/security/framework/e;->i:Ljava/lang/String;

    if-eqz v2, :cond_518

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_518

    or-int/lit8 v1, v1, 0x4

    :cond_518
    iget-object v2, v9, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/wireless/security/framework/utils/e;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_522

    or-int/lit8 v1, v1, 0x8

    :cond_522
    iget-object v2, v9, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/wireless/security/framework/utils/e;->d(Landroid/content/Context;)Z

    move-result v2
    :try_end_528
    .catch Ljava/lang/InstantiationException; {:try_start_4f2 .. :try_end_528} :catch_5de
    .catch Ljava/lang/IllegalAccessException; {:try_start_4f2 .. :try_end_528} :catch_5dc
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_4f2 .. :try_end_528} :catch_5e4
    .catchall {:try_start_4f2 .. :try_end_528} :catchall_5f0

    if-eqz v2, :cond_52c

    or-int/lit8 v1, v1, 0x10

    :cond_52c
    :try_start_52c
    iget-object v2, v9, Lcom/alibaba/wireless/security/framework/e;->k:Lcom/alibaba/wireless/security/framework/c;

    if-eqz v2, :cond_53b

    iget-object v2, v9, Lcom/alibaba/wireless/security/framework/e;->k:Lcom/alibaba/wireless/security/framework/c;

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/framework/c;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_53a
    .catchall {:try_start_52c .. :try_end_53a} :catchall_53b

    goto :goto_53d

    :catchall_53b
    :cond_53b
    move-object/from16 v2, v35

    :goto_53d
    :try_start_53d
    iget-object v5, v9, Lcom/alibaba/wireless/security/framework/e;->k:Lcom/alibaba/wireless/security/framework/c;

    if-nez v5, :cond_54d

    new-instance v5, Lcom/alibaba/wireless/security/framework/c;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v5, v6}, Lcom/alibaba/wireless/security/framework/c;-><init>(Lorg/json/JSONObject;)V

    iput-object v5, v9, Lcom/alibaba/wireless/security/framework/e;->k:Lcom/alibaba/wireless/security/framework/c;

    :cond_54d
    const/16 v24, 0x0

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v29

    const/4 v6, 0x1

    aput-object v2, v5, v6

    iget-object v1, v9, Lcom/alibaba/wireless/security/framework/e;->r:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    iget-object v1, v9, Lcom/alibaba/wireless/security/framework/e;->j:Ljava/lang/String;

    aput-object v1, v5, v3

    iget-object v1, v9, Lcom/alibaba/wireless/security/framework/e;->k:Lcom/alibaba/wireless/security/framework/c;

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/framework/c;->a()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v5, v2

    move-object/from16 v22, v13

    move-object/from16 v23, p3

    move-object/from16 v25, v28

    move-object/from16 v26, v20

    move-object/from16 v27, v5

    invoke-interface/range {v22 .. v27}, Lcom/alibaba/wireless/security/open/initialize/ISecurityGuardPlugin;->onPluginLoaded(Landroid/content/Context;Lcom/alibaba/wireless/security/framework/IRouterComponent;Lcom/alibaba/wireless/security/framework/ISGPluginInfo;Ljava/lang/String;[Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/IRouterComponent;

    move-result-object v1

    iput-object v1, v9, Lcom/alibaba/wireless/security/framework/e;->f:Lcom/alibaba/wireless/security/framework/IRouterComponent;

    const-string v1, "onPluginLoaded"

    invoke-static {v10, v14, v1, v11, v12}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->printTimeCost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->get_currentTime()J

    move-result-wide v1

    goto :goto_5a7

    :cond_58a
    const/4 v6, 0x1

    sput-wide v17, Lcom/alibaba/wireless/security/framework/SGPluginExtras;->slot:J

    iget-object v2, v9, Lcom/alibaba/wireless/security/framework/e;->f:Lcom/alibaba/wireless/security/framework/IRouterComponent;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v29

    move-object/from16 v22, v13

    move-object/from16 v23, p3

    move-object/from16 v24, v2

    move-object/from16 v25, v28

    move-object/from16 v26, v20

    move-object/from16 v27, v5

    invoke-interface/range {v22 .. v27}, Lcom/alibaba/wireless/security/open/initialize/ISecurityGuardPlugin;->onPluginLoaded(Landroid/content/Context;Lcom/alibaba/wireless/security/framework/IRouterComponent;Lcom/alibaba/wireless/security/framework/ISGPluginInfo;Ljava/lang/String;[Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/IRouterComponent;

    move-wide v1, v11

    :goto_5a7
    invoke-static {v10, v8}, Lcom/alibaba/wireless/security/framework/ApmMonitorAdapter;->jstageEnd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_71d

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_71d

    move-object/from16 v7, v20

    move-object/from16 v5, v34

    invoke-static {v5, v7}, Lcom/alibaba/wireless/security/framework/utils/e;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, v21

    invoke-static {v10, v7}, Lcom/alibaba/wireless/security/framework/ApmMonitorAdapter;->jstageStart(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v9, Lcom/alibaba/wireless/security/framework/e;->f:Lcom/alibaba/wireless/security/framework/IRouterComponent;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v10, v3, v29

    aput-object v31, v3, v6

    aput-object v5, v3, v4

    const/16 v4, 0x2776

    invoke-interface {v8, v4, v3}, Lcom/alibaba/wireless/security/framework/IRouterComponent;->doCommand(I[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10, v7}, Lcom/alibaba/wireless/security/framework/ApmMonitorAdapter;->jstageEnd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "10102"

    invoke-static {v10, v14, v3, v1, v2}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->printTimeCost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_5da
    .catch Ljava/lang/InstantiationException; {:try_start_53d .. :try_end_5da} :catch_5de
    .catch Ljava/lang/IllegalAccessException; {:try_start_53d .. :try_end_5da} :catch_5dc
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_53d .. :try_end_5da} :catch_5e4
    .catchall {:try_start_53d .. :try_end_5da} :catchall_5f0

    goto/16 :goto_71d

    :catch_5dc
    move-exception v0

    goto :goto_5df

    :catch_5de
    move-exception v0

    :goto_5df
    move-object v1, v0

    move-object/from16 v13, p2

    goto/16 :goto_718

    :catch_5e4
    move-exception v0

    goto :goto_601

    :catch_5e6
    move-exception v0

    move-object/from16 v13, p2

    goto/16 :goto_715

    :catch_5eb
    move-exception v0

    move-object/from16 v13, p2

    goto/16 :goto_715

    :catchall_5f0
    move-exception v0

    move-object/from16 v13, p2

    goto/16 :goto_792

    :catch_5f5
    move-exception v0

    move-object/from16 v36, v4

    move-object/from16 v30, v12

    move-object/from16 v37, v14

    move-object/from16 v33, v15

    move-object/from16 v38, v24

    move-object v15, v7

    :goto_601
    move-object v11, v0

    :try_start_602
    new-instance v12, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v38

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v1
    :try_end_621
    .catchall {:try_start_602 .. :try_end_621} :catchall_5f0

    const/16 v3, 0x67

    if-ne v1, v3, :cond_6bd

    const v2, 0x186cb

    const/16 v3, 0x67

    const-string v4, ""

    :try_start_62c
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_63b

    move-object/from16 v13, p2

    move-object/from16 v6, v36

    goto :goto_656

    :cond_63b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v37

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v36

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_653
    .catchall {:try_start_62c .. :try_end_653} :catchall_5f0

    move-object/from16 v13, p2

    move-object v6, v1

    :goto_656
    :try_start_656
    iget-object v1, v13, Lcom/alibaba/wireless/security/framework/e$j;->c:Ljava/io/File;

    if-eqz v1, :cond_672

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v33

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v13, Lcom/alibaba/wireless/security/framework/e$j;->c:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_66e
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_687

    :cond_672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v30

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v13, Lcom/alibaba/wireless/security/framework/e$j;->a:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_66e

    :goto_687
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_698
    .catchall {:try_start_656 .. :try_end_698} :catchall_78c

    :try_start_698
    iget-boolean v1, v13, Lcom/alibaba/wireless/security/framework/e$j;->d:Z

    if-nez v1, :cond_6a1

    iget-object v1, v9, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/framework/utils/b;->a()Z

    :cond_6a1
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6aa

    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_6aa
    .catchall {:try_start_698 .. :try_end_6aa} :catchall_6b4

    :cond_6aa
    :try_start_6aa
    iget-boolean v1, v13, Lcom/alibaba/wireless/security/framework/e$j;->d:Z

    if-nez v1, :cond_70f

    iget-object v1, v9, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    :goto_6b0
    invoke-virtual {v1}, Lcom/alibaba/wireless/security/framework/utils/b;->c()Z

    goto :goto_70f

    :catchall_6b4
    move-exception v0

    move-object v11, v0

    iget-boolean v1, v13, Lcom/alibaba/wireless/security/framework/e$j;->d:Z

    if-nez v1, :cond_70f

    iget-object v1, v9, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;
    :try_end_6bc
    .catchall {:try_start_6aa .. :try_end_6bc} :catchall_78c

    goto :goto_6b0

    :cond_6bd
    move-object/from16 v13, p2

    const v3, 0x186cb

    const/16 v4, 0xc7

    const-string v5, "native exception occurred"

    :try_start_6c6
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "soName="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", authCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/alibaba/wireless/security/framework/e;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v13, Lcom/alibaba/wireless/security/framework/e$j;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v1, p0

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v12

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_70f
    :goto_70f
    throw v11

    :catch_710
    move-exception v0

    move-object v13, v11

    goto :goto_715

    :catch_713
    move-exception v0

    move-object v13, v11

    :goto_715
    move-object v1, v0

    const/16 v28, 0x0

    :goto_718
    move-object/from16 v2, v35

    invoke-static {v2, v1}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_71d
    .catchall {:try_start_6c6 .. :try_end_71d} :catchall_78c

    :cond_71d
    :goto_71d
    sput-wide v17, Lcom/alibaba/wireless/security/framework/SGPluginExtras;->slot:J

    return-object v28

    :catchall_720
    move-exception v0

    goto/16 :goto_791

    :catch_723
    move-exception v0

    move-object/from16 v23, v7

    move-object v6, v8

    move-object/from16 v31, v13

    move-object v14, v15

    move-object v7, v3

    move-object v8, v4

    move-object v13, v11

    move-object v15, v12

    move-object v11, v0

    const v2, 0x186cb

    const/16 v3, 0x89

    const-string v4, "isMeetReverseDependencies failed"

    :try_start_736
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_73e

    move-object v6, v8

    goto :goto_751

    :cond_73e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    :goto_751
    iget-object v1, v13, Lcom/alibaba/wireless/security/framework/e$j;->c:Ljava/io/File;

    if-eqz v1, :cond_76b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Lcom/alibaba/wireless/security/framework/e$j;->c:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_767
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77e

    :cond_76b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Lcom/alibaba/wireless/security/framework/e$j;->a:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_767

    :goto_77e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    move-object/from16 v1, p0

    move-object/from16 v5, v23

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v11
    :try_end_78c
    .catchall {:try_start_736 .. :try_end_78c} :catchall_78c

    :catchall_78c
    move-exception v0

    goto :goto_792

    :catchall_78e
    move-exception v0

    move-object/from16 v31, v13

    :goto_791
    move-object v13, v11

    :goto_792
    move-object v1, v0

    goto/16 :goto_146

    :catchall_795
    move-exception v0

    move-object v13, v11

    move-object v1, v0

    :goto_798
    const/4 v5, 0x0

    :goto_799
    :try_start_799
    invoke-direct {v9, v13, v10, v5}, Lcom/alibaba/wireless/security/framework/e;->a(Lcom/alibaba/wireless/security/framework/e$j;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_79d
    .catchall {:try_start_799 .. :try_end_79d} :catchall_79d

    :catchall_79d
    move-exception v0

    move-object v1, v0

    sput-wide v17, Lcom/alibaba/wireless/security/framework/SGPluginExtras;->slot:J

    throw v1
.end method

.method private a(Landroid/content/Context;)Ljava/io/File;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    .line 4
    const-string v0, ""

    if-eqz p1, :cond_10b

    const/16 v1, 0x73

    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v2, :cond_30

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_e4

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    if-eqz v2, :cond_de

    const-string v1, "SGLib"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/wireless/security/framework/e;->r:Ljava/io/File;

    if-eqz p1, :cond_b4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_b4

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->r:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_72

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_72

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_72
    sget-boolean v0, Lcom/alibaba/wireless/security/framework/e;->x:Z

    if-eqz v0, :cond_92

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_92

    sput-boolean v3, Lcom/alibaba/wireless/security/framework/e;->x:Z

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->r:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/wireless/security/framework/e;->a(Ljava/io/File;Ljava/lang/String;)V

    :cond_92
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_99

    return-object p1

    :cond_99
    const v2, 0x186c6

    const/16 v3, 0x72

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v0, 0x72

    invoke-direct {p1, v0}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw p1

    :cond_b4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->r:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v2, 0x186c6

    const/16 v3, 0x6d

    const-string v4, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v0, 0x6d

    invoke-direct {p1, v0}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw p1

    :cond_de
    new-instance p1, Lcom/alibaba/wireless/security/open/SecException;

    invoke-direct {p1, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw p1

    :catchall_e4
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const v4, 0x186c6

    const/16 v5, 0x73

    const-string v6, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    invoke-direct {v0, p1, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :cond_10b
    const v3, 0x186c6

    const/16 v4, 0x74

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v0, 0x74

    invoke-direct {p1, v0}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw p1
.end method

.method private a(Landroid/content/Context;Lcom/alibaba/wireless/security/framework/c;)Ljava/io/File;
    .registers 8

    .line 5
    invoke-static {p1}, Lcom/alibaba/wireless/security/framework/utils/e;->c(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_bd

    if-eqz p2, :cond_bd

    invoke-virtual {p2}, Lcom/alibaba/wireless/security/framework/c;->b()I

    move-result p1

    if-eqz p1, :cond_bd

    invoke-virtual {p2}, Lcom/alibaba/wireless/security/framework/c;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_bd

    invoke-virtual {p2}, Lcom/alibaba/wireless/security/framework/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_bd

    invoke-direct {p0}, Lcom/alibaba/wireless/security/framework/e;->g()Z

    move-result p1

    const-string v1, "libs"

    if-eqz p1, :cond_6c

    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/wireless/security/framework/e;->r:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "upds"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/wireless/security/framework/c;->b()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/wireless/security/framework/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alibaba/wireless/security/framework/c;->b()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/alibaba/wireless/security/framework/e;->a(Ljava/io/File;I)Z

    move-result v2

    if-nez v2, :cond_6d

    :cond_6c
    move-object p1, v0

    :cond_6d
    if-eqz p1, :cond_75

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_b3

    :cond_75
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/wireless/security/framework/e;->q:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/wireless/security/framework/c;->b()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/wireless/security/framework/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alibaba/wireless/security/framework/c;->b()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/alibaba/wireless/security/framework/e;->a(Ljava/io/File;I)Z

    move-result p2

    if-nez p2, :cond_b3

    move-object p1, v0

    :cond_b3
    if-eqz p1, :cond_bc

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_bc

    goto :goto_bd

    :cond_bc
    move-object v0, p1

    :cond_bd
    :goto_bd
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 15

    .line 6
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_a

    goto :goto_c

    :catchall_a
    nop

    move-object v1, v0

    :goto_c
    if-nez v1, :cond_f

    return-object v0

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "libsg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_25
    const-string v3, "Plugin not existed in the application library path, maybe installed in x86 phone, or the armeabi-v7a existed"

    invoke-static {v3}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->i(Ljava/lang/String;)V

    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2f} :catch_6b
    .catchall {:try_start_25 .. :try_end_2f} :catchall_69

    :try_start_2f
    sget-object v4, Lcom/alibaba/wireless/security/framework/e;->v:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_33
    if-ge v6, v5, :cond_63

    aget-object v7, v4, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lib"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v9

    if-eqz v9, :cond_60

    sput-object v7, Lcom/alibaba/wireless/security/framework/e;->w:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v3, v8}, Lcom/alibaba/wireless/security/framework/e;->a(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_5f} :catch_67
    .catchall {:try_start_2f .. :try_end_5f} :catchall_8d

    goto :goto_63

    :cond_60
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    :cond_63
    :goto_63
    :try_start_63
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_66

    :catchall_66
    return-object v0

    :catch_67
    move-exception p2

    goto :goto_6d

    :catchall_69
    move-exception p1

    goto :goto_8f

    :catch_6b
    move-exception p2

    move-object v3, v0

    :goto_6d
    :try_start_6d
    const-string v2, "getPluginFile throws exception"

    invoke-static {v2, p2}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const v5, 0x186cf

    const/4 v6, 0x3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v1}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    const-string v11, ""

    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v4 .. v11}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_6d .. :try_end_87} :catchall_8d

    if-eqz v3, :cond_8c

    :try_start_89
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8c

    :catchall_8c
    :cond_8c
    return-object v0

    :catchall_8d
    move-exception p1

    move-object v0, v3

    :goto_8f
    if-eqz v0, :cond_94

    :try_start_91
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_94

    :catchall_94
    :cond_94
    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 15

    .line 7
    const/4 v0, 0x0

    if-eqz p3, :cond_44

    if-nez p4, :cond_6

    goto :goto_44

    :cond_6
    :try_start_6
    const-string v1, "Plugin not existed in the application library path, maybe installed in x86 phone, or the armeabi-v7a existed"

    invoke-static {v1}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->i(Ljava/lang/String;)V

    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_10} :catch_1c
    .catchall {:try_start_6 .. :try_end_10} :catchall_1a

    :try_start_10
    invoke-direct {p0, p1, p2, v1, p4}, Lcom/alibaba/wireless/security/framework/e;->a(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_18
    .catchall {:try_start_10 .. :try_end_14} :catchall_3c

    :goto_14
    :try_start_14
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_3b

    goto :goto_3b

    :catch_18
    move-exception p2

    goto :goto_1e

    :catchall_1a
    move-exception p1

    goto :goto_3e

    :catch_1c
    move-exception p2

    move-object v1, v0

    :goto_1e
    :try_start_1e
    const-string p4, "getPluginFile throws exception"

    invoke-static {p4, p2}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const v3, 0x186cf

    const/4 v4, 0x3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p3}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, ""

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_1e .. :try_end_38} :catchall_3c

    if-eqz v1, :cond_3b

    goto :goto_14

    :catchall_3b
    :cond_3b
    :goto_3b
    return-object v0

    :catchall_3c
    move-exception p1

    move-object v0, v1

    :goto_3e
    if-eqz v0, :cond_43

    :try_start_40
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_43

    :catchall_43
    :cond_43
    throw p1

    :cond_44
    :goto_44
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/File;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    if-eqz p3, :cond_5e

    if-eqz p4, :cond_5e

    invoke-virtual {p3, p4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p4

    if-eqz p4, :cond_5e

    invoke-virtual {p4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/wireless/security/framework/utils/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "libsg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_inner"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ".zip"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4d

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-virtual {p4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_53

    :cond_4d
    invoke-static {p3, p4, v0}, Lcom/alibaba/wireless/security/framework/utils/e;->a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_59

    :cond_53
    const-string p1, "Extract success"

    invoke-static {p1}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->i(Ljava/lang/String;)V

    goto :goto_5f

    :cond_59
    const-string p1, "Extract failed!!"

    invoke-static {p1}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->i(Ljava/lang/String;)V

    :cond_5e
    const/4 v0, 0x0

    :goto_5f
    return-object v0
.end method

.method private a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    :try_start_5
    invoke-static {p2, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_a

    goto :goto_2f

    :catchall_a
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const v6, 0x186ca

    const/16 v7, 0x84

    const-string v8, "Class.forName failed"

    const-string v12, ""

    move-object v5, p0

    move-object v10, p2

    invoke-direct/range {v5 .. v12}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    loadClassFromClassLoader( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ) used time: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->i(Ljava/lang/String;)V

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/ClassLoader;
    .registers 9

    .line 10
    if-nez p3, :cond_7

    :try_start_2
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/utils/b;->a()Z

    :cond_7
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/wireless/security/framework/e;->i:Ljava/lang/String;

    if-eqz v3, :cond_4f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/e;->i:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add path to native classloader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->i(Ljava/lang/String;)V

    :cond_4f
    sget-object v3, Lcom/alibaba/wireless/security/framework/e;->w:Ljava/lang/String;

    if-eqz v3, :cond_71

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "!/lib/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/alibaba/wireless/security/framework/e;->w:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_73
    .catchall {:try_start_2 .. :try_end_73} :catchall_a7

    const/16 v2, 0x22

    if-lt v0, v2, :cond_7f

    :try_start_77
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->setReadOnly()Z
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7f} :catch_7f
    .catchall {:try_start_77 .. :try_end_7f} :catchall_a7

    :catch_7f
    :cond_7f
    const-string v0, "6.0.1"

    :try_start_81
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_87
    .catchall {:try_start_81 .. :try_end_87} :catchall_a7

    const-class v2, Lcom/alibaba/wireless/security/framework/e;

    if-nez v0, :cond_95

    :try_start_8b
    new-instance p2, Ldalvik/system/PathClassLoader;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p2, p1, v1, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_9f

    :cond_95
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_9e
    .catchall {:try_start_8b .. :try_end_9e} :catchall_a7

    move-object p2, v0

    :goto_9f
    if-nez p3, :cond_a6

    iget-object p1, p0, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {p1}, Lcom/alibaba/wireless/security/framework/utils/b;->c()Z

    :cond_a6
    return-object p2

    :catchall_a7
    move-exception p1

    if-nez p3, :cond_af

    iget-object p2, p0, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {p2}, Lcom/alibaba/wireless/security/framework/utils/b;->c()Z

    :cond_af
    throw p1
.end method

.method private a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/wireless/security/open/initialize/c;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    move v2, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-static/range {v1 .. v11}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->addUtRecord(Ljava/lang/String;IILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Lcom/alibaba/wireless/security/framework/e$j;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 14
    iget-object p1, p1, Lcom/alibaba/wireless/security/framework/e$j;->c:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/alibaba/wireless/security/framework/e;->c(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_6e

    iget-object p1, p0, Lcom/alibaba/wireless/security/framework/e;->k:Lcom/alibaba/wireless/security/framework/c;

    invoke-virtual {p1}, Lcom/alibaba/wireless/security/framework/c;->b()I

    move-result p1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/e;->q:Ljava/io/File;

    const-string v2, "dyInit.config"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/wireless/security/framework/utils/a;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PluginName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginVersion="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "LibDeployVersion="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "write success="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const v4, 0x186d0

    const/16 v5, 0x87

    const-string v6, "Write dyInit.config"

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    return-void
.end method

.method public static synthetic a(Lcom/alibaba/wireless/security/framework/e;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 15
    invoke-direct/range {p0 .. p7}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/alibaba/wireless/security/framework/e;Ljava/io/File;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Lcom/alibaba/wireless/security/framework/e;->a(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .registers 6

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/4 v1, 0x0

    :goto_d
    array-length v2, v0

    if-ge v1, v2, :cond_1d

    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/alibaba/wireless/security/framework/e;->a(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1d
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    .line 18
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/wireless/security/framework/e$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/wireless/security/framework/e$a;-><init>(Lcom/alibaba/wireless/security/framework/e;Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "SGCleanFile"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a()Z
    .registers 9

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/alibaba/wireless/security/framework/e;->e()Ljava/io/File;

    move-result-object v1

    const-string v2, "upds"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "update.config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/alibaba/wireless/security/framework/e;->d()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_98

    invoke-static {v1}, Lcom/alibaba/wireless/security/framework/c;->a(Ljava/io/File;)Lcom/alibaba/wireless/security/framework/c;

    move-result-object v2

    if-nez v2, :cond_29

    return v4

    :cond_29
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "libs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/framework/c;->b()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "FBD"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/framework/c;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0}, Lcom/alibaba/wireless/security/framework/e;->c()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_98

    if-eqz v0, :cond_98

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    :try_start_66
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/utils/b;->a()Z

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    invoke-static {v1}, Lcom/alibaba/wireless/security/framework/utils/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_81

    invoke-static {v3, v0}, Lcom/alibaba/wireless/security/framework/utils/a;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2
    :try_end_78
    .catchall {:try_start_66 .. :try_end_78} :catchall_91

    if-eqz v2, :cond_81

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/utils/b;->c()Z

    const/4 v0, 0x1

    return v0

    :cond_81
    :try_start_81
    iget-object v2, p0, Lcom/alibaba/wireless/security/framework/e;->b:Ljava/util/List;

    new-instance v5, Lcom/alibaba/wireless/security/framework/e$g;

    invoke-direct {v5, p0, v0, v3, v1}, Lcom/alibaba/wireless/security/framework/e$g;-><init>(Lcom/alibaba/wireless/security/framework/e;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_91

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/utils/b;->c()Z

    goto :goto_98

    :catchall_91
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/framework/utils/b;->c()Z

    throw v0

    :cond_98
    :goto_98
    return v4
.end method

.method public static synthetic a(Lcom/alibaba/wireless/security/framework/e;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/io/File;I)Z
    .registers 4

    .line 23
    new-instance p2, Ljava/io/File;

    const-string v0, ".finish"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result p1

    return p1
.end method

.method private a(Ljava/io/File;Ljava/io/File;)Z
    .registers 22

    .line 24
    move-object/from16 v9, p0

    move-object/from16 v1, p2

    const-string v10, ""

    new-instance v11, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v12, 0x0

    :try_start_29
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    :cond_32
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_8e

    move-object/from16 v3, p1

    :try_start_36
    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_8c

    :try_start_3d
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_88

    const-wide/16 v15, 0x0

    :try_start_48
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v17

    move-object v13, v5

    move-object v14, v4

    invoke-virtual/range {v13 .. v18}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_84

    :try_start_54
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_81

    :try_start_57
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_d5

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_78

    const/4 v12, 0x1

    goto/16 :goto_d5

    :cond_78
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    :cond_7b
    invoke-virtual {v11, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_7f
    .catchall {:try_start_57 .. :try_end_7f} :catchall_8c

    move v12, v0

    goto :goto_d5

    :catchall_81
    move-exception v0

    move-object v13, v2

    goto :goto_86

    :catchall_84
    move-exception v0

    move-object v13, v4

    :goto_86
    move-object v14, v5

    goto :goto_93

    :catchall_88
    move-exception v0

    move-object v14, v2

    move-object v13, v4

    goto :goto_93

    :catchall_8c
    move-exception v0

    goto :goto_91

    :catchall_8e
    move-exception v0

    move-object/from16 v3, p1

    :goto_91
    move-object v13, v2

    move-object v14, v13

    :goto_93
    :try_start_93
    invoke-static {v10, v0}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const v2, 0x186cf

    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    move-object/from16 v1, p0

    move v3, v4

    move-object v4, v0

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catchall {:try_start_93 .. :try_end_bf} :catchall_d9

    if-eqz v13, :cond_ca

    :try_start_c1
    invoke-virtual {v13}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_c5

    goto :goto_ca

    :catchall_c5
    move-exception v0

    move-object v1, v0

    invoke-static {v10, v1}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_ca
    :goto_ca
    if-eqz v14, :cond_d5

    :try_start_cc
    invoke-virtual {v14}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_d0

    goto :goto_d5

    :catchall_d0
    move-exception v0

    move-object v1, v0

    invoke-static {v10, v1}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d5
    :goto_d5
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    return v12

    :catchall_d9
    move-exception v0

    move-object v1, v0

    if-eqz v13, :cond_e6

    :try_start_dd
    invoke-virtual {v13}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_e0
    .catchall {:try_start_dd .. :try_end_e0} :catchall_e1

    goto :goto_e6

    :catchall_e1
    move-exception v0

    move-object v2, v0

    invoke-static {v10, v2}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e6
    :goto_e6
    if-eqz v14, :cond_f1

    :try_start_e8
    invoke-virtual {v14}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_ec

    goto :goto_f1

    :catchall_ec
    move-exception v0

    move-object v2, v0

    invoke-static {v10, v2}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f1
    :goto_f1
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    throw v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_127

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wireless/security/framework/d;

    const-string v4, "reversedependencies"

    invoke-virtual {v1, v4}, Lcom/alibaba/wireless/security/framework/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_2c

    goto :goto_a

    :cond_2c
    const-string v4, ";"

    invoke-virtual {v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_34
    array-length v7, v4

    if-ge v6, v7, :cond_a

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_45

    goto/16 :goto_da

    :cond_45
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x2

    const-string v10, ")"

    const-string v11, "("

    if-ne v8, v9, :cond_de

    aget-object v8, v7, v5

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_da

    aget-object v8, v7, v2

    invoke-direct {p0, p2, v8}, Lcom/alibaba/wireless/security/framework/e;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_65

    goto/16 :goto_da

    :cond_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plugin "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not meet the reverse dependency of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/framework/d;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v7, v5

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v7, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/alibaba/wireless/security/framework/e;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/framework/d;->getPluginPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v6, 0x186c9

    const/16 v7, 0x75

    move-object v5, p0

    move-object v8, p1

    move-object v11, v12

    move-object v12, p2

    invoke-direct/range {v5 .. v12}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v0, 0x75

    invoke-direct {p2, p1, v0}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_da
    :goto_da
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_34

    :cond_de
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/framework/d;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/framework/d;->getPluginPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v6, 0x186c9

    const/16 v7, 0x83

    const-string v8, "nameVersionPair.length != 2"

    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 p2, 0x83

    invoke-direct {p1, p2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw p1

    :cond_127
    return v2
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)Z
    .registers 22

    .line 26
    move-object/from16 v9, p0

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    monitor-enter p0

    :try_start_9
    iget-object v1, v9, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/wireless/security/framework/utils/e;->c(Landroid/content/Context;)Z

    move-result v1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_16e

    const/4 v12, 0x1

    if-eqz v1, :cond_14

    monitor-exit p0

    return v12

    :cond_14
    :try_start_14
    iget-object v1, v9, Lcom/alibaba/wireless/security/framework/e;->i:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_16e

    if-eqz v1, :cond_1a

    monitor-exit p0

    return v12

    :cond_1a
    if-eqz v10, :cond_7e

    :try_start_1c
    new-instance v1, Ljava/io/File;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-direct {v9, v10}, Lcom/alibaba/wireless/security/framework/e;->c(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_76

    iget-boolean v1, v9, Lcom/alibaba/wireless/security/framework/e;->l:Z

    if-eqz v1, :cond_78

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_3e
    .catchall {:try_start_1c .. :try_end_3e} :catchall_16e

    if-eqz v2, :cond_42

    monitor-exit p0

    return v12

    :cond_42
    :try_start_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apkPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",srcLibDir="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v9, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/wireless/security/framework/utils/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const v2, 0x186c7

    const/16 v3, 0x7e

    const-string v4, "return true without extraction"

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_42 .. :try_end_75} :catchall_16e

    goto :goto_78

    :cond_76
    monitor-exit p0

    return v12

    :cond_78
    :goto_78
    :try_start_78
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    goto :goto_81

    :cond_7e
    move-object/from16 v3, p1

    move-object v13, v3

    :goto_81
    if-nez p5, :cond_88

    iget-object v1, v9, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/framework/utils/b;->a()Z
    :try_end_88
    .catchall {:try_start_78 .. :try_end_88} :catchall_16e

    :cond_88
    const/4 v14, 0x0

    :try_start_89
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_123

    :try_start_8e
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_121

    if-eqz v0, :cond_9d

    if-nez p5, :cond_9b

    :try_start_96
    iget-object v0, v9, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/utils/b;->c()Z
    :try_end_9b
    .catchall {:try_start_96 .. :try_end_9b} :catchall_16e

    :cond_9b
    monitor-exit p0

    return v12

    :cond_9d
    :try_start_9d
    invoke-static {v13, v11, v15}, Lcom/alibaba/wireless/security/framework/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_cf

    iget-boolean v0, v9, Lcom/alibaba/wireless/security/framework/e;->l:Z

    if-nez v0, :cond_c6

    invoke-direct {v9, v10}, Lcom/alibaba/wireless/security/framework/e;->c(Ljava/io/File;)Z

    move-result v0
    :try_end_ab
    .catchall {:try_start_9d .. :try_end_ab} :catchall_121

    if-eqz v0, :cond_c6

    const v2, 0x186c7

    const/16 v3, 0x7f

    :try_start_b2
    const-string v4, "so extracted in child process"
    :try_end_b4
    .catchall {:try_start_b2 .. :try_end_b4} :catchall_16e

    :try_start_b4
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v9, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/wireless/security/framework/utils/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v1, p0

    move-object v5, v13

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_b4 .. :try_end_c6} :catchall_121

    :cond_c6
    if-nez p5, :cond_cd

    :try_start_c8
    iget-object v0, v9, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/utils/b;->c()Z
    :try_end_cd
    .catchall {:try_start_c8 .. :try_end_cd} :catchall_16e

    :cond_cd
    monitor-exit p0

    return v12

    :cond_cf
    :try_start_cf
    iget-object v0, v9, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v1, v11, v15}, Lcom/alibaba/wireless/security/framework/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v1
    :try_end_db
    .catchall {:try_start_cf .. :try_end_db} :catchall_121

    if-eqz v1, :cond_e6

    if-nez p5, :cond_e4

    :try_start_df
    iget-object v0, v9, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/utils/b;->c()Z
    :try_end_e4
    .catchall {:try_start_df .. :try_end_e4} :catchall_16e

    :cond_e4
    monitor-exit p0

    return v12

    :cond_e6
    :try_start_e6
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_e9
    array-length v2, v0

    if-ge v1, v2, :cond_11e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zipFilePath3["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->i(Ljava/lang/String;)V

    aget-object v2, v0, v1

    invoke-static {v2, v11, v15}, Lcom/alibaba/wireless/security/framework/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v2
    :try_end_110
    .catchall {:try_start_e6 .. :try_end_110} :catchall_121

    if-eqz v2, :cond_11b

    if-nez p5, :cond_119

    :try_start_114
    iget-object v0, v9, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/utils/b;->c()Z
    :try_end_119
    .catchall {:try_start_114 .. :try_end_119} :catchall_16e

    :cond_119
    monitor-exit p0

    return v12

    :cond_11b
    add-int/lit8 v1, v1, 0x1

    goto :goto_e9

    :cond_11e
    if-nez p5, :cond_163

    goto :goto_15e

    :catchall_121
    move-exception v0

    goto :goto_125

    :catchall_123
    move-exception v0

    const/4 v15, 0x0

    :goto_125
    const v2, 0x186c7

    const/16 v3, 0x6b

    :try_start_12a
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/wireless/security/framework/e;->i()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v13}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v15, :cond_141

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_140
    .catchall {:try_start_12a .. :try_end_140} :catchall_165

    goto :goto_143

    :cond_141
    :try_start_141
    const-string v1, ""
    :try_end_143
    .catchall {:try_start_141 .. :try_end_143} :catchall_16e

    :goto_143
    move-object v7, v1

    if-eqz v10, :cond_14f

    :try_start_146
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_14e
    .catchall {:try_start_146 .. :try_end_14e} :catchall_165

    goto :goto_151

    :cond_14f
    :try_start_14f
    const-string v1, ""
    :try_end_151
    .catchall {:try_start_14f .. :try_end_151} :catchall_16e

    :goto_151
    move-object v8, v1

    move-object/from16 v1, p0

    :try_start_154
    invoke-direct/range {v1 .. v8}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15c
    .catchall {:try_start_154 .. :try_end_15c} :catchall_165

    if-nez p5, :cond_163

    :goto_15e
    :try_start_15e
    iget-object v0, v9, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/utils/b;->c()Z
    :try_end_163
    .catchall {:try_start_15e .. :try_end_163} :catchall_16e

    :cond_163
    monitor-exit p0

    return v14

    :catchall_165
    move-exception v0

    if-nez p5, :cond_16d

    :try_start_168
    iget-object v1, v9, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/framework/utils/b;->c()Z

    :cond_16d
    throw v0
    :try_end_16e
    .catchall {:try_start_168 .. :try_end_16e} :catchall_16e

    :catchall_16e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 1
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p1

    array-length v1, p2

    if-ge v0, v1, :cond_10

    array-length v0, p1

    goto :goto_11

    :cond_10
    array-length v0, p2

    :goto_11
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_2c

    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, p2, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v3, v4, :cond_25

    const/4 p1, 0x1

    return p1

    :cond_25
    if-ge v3, v4, :cond_29

    const/4 p1, -0x1

    return p1

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2c
    return v1
.end method

.method private b()Lcom/alibaba/wireless/security/framework/c;
    .registers 5

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/e;->q:Ljava/io/File;

    const-string v2, "update.config"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alibaba/wireless/security/framework/e;->q:Ljava/io/File;

    const-string v3, "init.config"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alibaba/wireless/security/framework/e;->l:Z

    if-eqz v2, :cond_43

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-direct {p0}, Lcom/alibaba/wireless/security/framework/e;->g()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-direct {p0}, Lcom/alibaba/wireless/security/framework/e;->a()Z

    :cond_25
    invoke-static {v0}, Lcom/alibaba/wireless/security/framework/c;->a(Ljava/io/File;)Lcom/alibaba/wireless/security/framework/c;

    move-result-object v2

    if-eqz v2, :cond_3e

    :try_start_2b
    iget-object v3, p0, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v3}, Lcom/alibaba/wireless/security/framework/utils/b;->a()Z

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_37

    goto :goto_4c

    :catchall_37
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/framework/utils/b;->c()Z

    throw v0

    :cond_3e
    invoke-static {v1}, Lcom/alibaba/wireless/security/framework/c;->a(Ljava/io/File;)Lcom/alibaba/wireless/security/framework/c;

    move-result-object v0

    goto :goto_52

    :cond_43
    :try_start_43
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/utils/b;->a()Z

    invoke-static {v1}, Lcom/alibaba/wireless/security/framework/c;->a(Ljava/io/File;)Lcom/alibaba/wireless/security/framework/c;

    move-result-object v2
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_85

    :goto_4c
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/utils/b;->c()Z

    move-object v0, v2

    :goto_52
    if-eqz v0, :cond_84

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alibaba/wireless/security/framework/e;->q:Ljava/io/File;

    const-string v3, "dyInit.config"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/wireless/security/framework/utils/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_84

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/c;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/c;->b()I

    move-result v0

    iget-object v2, p0, Lcom/alibaba/wireless/security/framework/e;->b:Ljava/util/List;

    new-instance v3, Lcom/alibaba/wireless/security/framework/e$f;

    invoke-direct {v3, p0, v1, v0}, Lcom/alibaba/wireless/security/framework/e$f;-><init>(Lcom/alibaba/wireless/security/framework/e;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :cond_84
    return-object v0

    :catchall_85
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/framework/utils/b;->c()Z

    throw v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/wireless/security/framework/e$j;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    .line 3
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "!/"

    const-string v3, ".zip"

    iget-object v4, v1, Lcom/alibaba/wireless/security/framework/e;->s:Ljava/io/File;

    const-string v5, ".so"

    const/4 v6, 0x1

    const-string v7, "libsg"

    const/4 v9, 0x0

    if-eqz v4, :cond_4c

    new-instance v4, Ljava/io/File;

    iget-object v10, v1, Lcom/alibaba/wireless/security/framework/e;->s:Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4c

    sget-object v10, Lcom/alibaba/wireless/security/framework/e;->u:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_40

    invoke-direct {v1, v0, v4}, Lcom/alibaba/wireless/security/framework/e;->b(Ljava/lang/String;Ljava/io/File;)Z

    move-result v10

    if-nez v10, :cond_40

    goto :goto_4c

    :cond_40
    iget-object v10, v1, Lcom/alibaba/wireless/security/framework/e;->s:Ljava/io/File;

    invoke-direct {v1, v10}, Lcom/alibaba/wireless/security/framework/e;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    iget-object v11, v1, Lcom/alibaba/wireless/security/framework/e;->s:Ljava/io/File;

    if-eq v10, v11, :cond_4e

    const/4 v11, 0x1

    goto :goto_4f

    :cond_4c
    :goto_4c
    const/4 v4, 0x0

    const/4 v10, 0x0

    :cond_4e
    const/4 v11, 0x0

    :goto_4f
    if-nez v10, :cond_5e

    iget-object v10, v1, Lcom/alibaba/wireless/security/framework/e;->q:Ljava/io/File;

    invoke-direct {v1, v10}, Lcom/alibaba/wireless/security/framework/e;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    iget-object v11, v1, Lcom/alibaba/wireless/security/framework/e;->q:Ljava/io/File;

    if-eq v10, v11, :cond_5d

    const/4 v11, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v11, 0x0

    :cond_5e
    :goto_5e
    if-nez v11, :cond_65

    iget-object v12, v1, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v12}, Lcom/alibaba/wireless/security/framework/utils/b;->a()Z

    :cond_65
    if-nez v4, :cond_76

    :try_start_67
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/wireless/security/framework/e;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_76

    const/4 v4, 0x0

    goto :goto_76

    :catchall_73
    move-exception v0

    goto/16 :goto_193

    :cond_76
    :goto_76
    if-eqz v4, :cond_c6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_c6

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c6

    const/4 v13, 0x2

    invoke-virtual {v12, v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v12, v2, v9

    aget-object v2, v2, v6

    sget-object v6, Lcom/alibaba/wireless/security/framework/e;->v:[Ljava/lang/String;

    array-length v13, v6

    :goto_90
    if-ge v9, v13, :cond_c6

    aget-object v14, v6, v9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lib"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c3

    sput-object v14, Lcom/alibaba/wireless/security/framework/e;->w:Ljava/lang/String;

    invoke-direct {v1, v0, v10, v12, v2}, Lcom/alibaba/wireless/security/framework/e;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    goto :goto_c6

    :cond_c3
    add-int/lit8 v9, v9, 0x1

    goto :goto_90

    :cond_c6
    :goto_c6
    if-nez v4, :cond_cc

    invoke-direct/range {p0 .. p1}, Lcom/alibaba/wireless/security/framework/e;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    :cond_cc
    if-nez v4, :cond_d4

    if-eqz p3, :cond_d4

    invoke-direct {v1, v0, v10}, Lcom/alibaba/wireless/security/framework/e;->a(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4
    :try_end_d4
    .catchall {:try_start_67 .. :try_end_d4} :catchall_73

    :cond_d4
    if-nez v4, :cond_df

    if-nez v11, :cond_dd

    iget-object v0, v1, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/utils/b;->c()Z

    :cond_dd
    const/4 v2, 0x0

    return-object v2

    :cond_df
    const/4 v2, 0x0

    :try_start_e0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f2

    new-instance v0, Lcom/alibaba/wireless/security/framework/e$j;

    invoke-direct {v0, v4, v10, v2, v11}, Lcom/alibaba/wireless/security/framework/e$j;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V

    move-object v8, v0

    goto/16 :goto_18b

    :cond_f2
    invoke-static {}, Lcom/alibaba/wireless/security/framework/utils/e;->b()Z

    move-result v5

    if-eqz v5, :cond_ff

    new-instance v8, Lcom/alibaba/wireless/security/framework/e$j;

    invoke-direct {v8, v4, v10, v4, v11}, Lcom/alibaba/wireless/security/framework/e$j;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V

    goto/16 :goto_18b

    :cond_ff
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v10, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_13a

    invoke-direct {v1, v5}, Lcom/alibaba/wireless/security/framework/e;->e(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_13a

    invoke-direct {v1, v5, v4}, Lcom/alibaba/wireless/security/framework/e;->c(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_13a

    new-instance v8, Lcom/alibaba/wireless/security/framework/e$j;

    invoke-direct {v8, v5, v10, v4, v11}, Lcom/alibaba/wireless/security/framework/e$j;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_18b

    :cond_13a
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-direct {v1, v4, v5}, Lcom/alibaba/wireless/security/framework/e;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_149

    new-instance v8, Lcom/alibaba/wireless/security/framework/e$j;

    invoke-direct {v8, v5, v10, v4, v11}, Lcom/alibaba/wireless/security/framework/e$j;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_18b

    :cond_149
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_cp"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17e

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-eqz v0, :cond_184

    :cond_17e
    invoke-direct {v1, v4, v5}, Lcom/alibaba/wireless/security/framework/e;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_18a

    :cond_184
    new-instance v8, Lcom/alibaba/wireless/security/framework/e$j;

    invoke-direct {v8, v5, v10, v4, v11}, Lcom/alibaba/wireless/security/framework/e$j;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V
    :try_end_189
    .catchall {:try_start_e0 .. :try_end_189} :catchall_73

    goto :goto_18b

    :cond_18a
    move-object v8, v2

    :goto_18b
    if-nez v11, :cond_192

    iget-object v0, v1, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/utils/b;->c()Z

    :cond_192
    return-object v8

    :goto_193
    if-nez v11, :cond_19a

    iget-object v2, v1, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/framework/utils/b;->c()Z

    :cond_19a
    throw v0
.end method

.method private b(Ljava/io/File;)Ljava/io/File;
    .registers 4

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/alibaba/wireless/security/framework/e;->l:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/io/File;

    const-string v1, "main"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_20
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_27

    move-object p1, v0

    :cond_27
    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 5
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->i:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/alibaba/wireless/security/framework/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/wireless/security/framework/utils/e;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2e

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2e
    return-object v1
.end method

.method private b(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 6
    const-class v0, Lcom/alibaba/wireless/security/framework/InterfacePluginInfo;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/alibaba/wireless/security/framework/InterfacePluginInfo;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    invoke-interface {p1}, Lcom/alibaba/wireless/security/framework/InterfacePluginInfo;->pluginName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic b(Lcom/alibaba/wireless/security/framework/e;)V
    .registers 1

    .line 7
    invoke-direct {p0}, Lcom/alibaba/wireless/security/framework/e;->h()V

    return-void
.end method

.method private b(Ljava/io/File;Ljava/io/File;)Z
    .registers 14

    .line 8
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "android.system.Os"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2b

    const-string v3, "symlink"

    const/4 v4, 0x2

    :try_start_c
    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v1

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_2b

    const/4 v1, 0x1

    goto :goto_7e

    :catchall_2b
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create symbolic link( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ) failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const v4, 0x186cf

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7e
    return v1
.end method

.method private b(Ljava/lang/String;Ljava/io/File;)Z
    .registers 13

    .line 9
    const/4 v0, 0x1

    const/4 v1, 0x3

    :try_start_2
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "main"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "middletier"

    aput-object v3, v2, v0

    const-string v3, "securitybody"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v1, :cond_4e

    aget-object v6, v2, v3

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_20
    const/4 v3, 0x0

    :goto_21
    if-ge v3, v1, :cond_4e

    aget-object v6, v2, v3

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    goto :goto_4b

    :cond_2c
    new-instance v6, Ljava/io/File;
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_4e

    const-string v7, "%s/libsg%s.so"

    :try_start_30
    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    aget-object v9, v2, v3

    aput-object v9, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_47
    .catchall {:try_start_30 .. :try_end_47} :catchall_4e

    if-nez v6, :cond_4b

    const/4 v0, 0x0

    goto :goto_4e

    :cond_4b
    :goto_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :catchall_4e
    :cond_4e
    :goto_4e
    return v0
.end method

.method public static synthetic c(Lcom/alibaba/wireless/security/framework/e;)Landroid/os/HandlerThread;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/alibaba/wireless/security/framework/e;->a:Landroid/os/HandlerThread;

    return-object p0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/wireless/security/framework/ISGPluginInfo;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/alibaba/wireless/security/framework/e;->o:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/alibaba/wireless/security/framework/e;->m:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/alibaba/wireless/security/framework/e;->getMainPluginName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object p2, p0, Lcom/alibaba/wireless/security/framework/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/wireless/security/framework/ISGPluginInfo;

    return-object p1

    :cond_1d
    invoke-static {}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->get_currentFuncName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->get_currentTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alibaba/wireless/security/framework/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wireless/security/framework/d;

    if-eqz v3, :cond_30

    return-object v3

    :cond_30
    invoke-static {}, Lcom/alibaba/wireless/security/framework/SGApmMonitorManager;->getInstance()Lcom/alibaba/wireless/security/framework/SGApmMonitorManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/alibaba/wireless/security/framework/SGApmMonitorManager;->monitorStart(Ljava/lang/String;)V

    const-string v3, "2"

    invoke-static {p1, v3}, Lcom/alibaba/wireless/security/framework/ApmMonitorAdapter;->jstageStart(Ljava/lang/String;Ljava/lang/String;)V

    const-class v3, Lcom/alibaba/wireless/security/framework/e;

    monitor-enter v3

    :try_start_3f
    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wireless/security/framework/d;

    if-eqz v4, :cond_4b

    monitor-exit v3

    return-object v4

    :cond_4b
    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/e;->q:Ljava/io/File;

    if-eqz v4, :cond_55

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_58

    :cond_55
    invoke-direct {p0}, Lcom/alibaba/wireless/security/framework/e;->f()V

    :cond_58
    const-string v4, "2"

    invoke-static {p1, v4}, Lcom/alibaba/wireless/security/framework/ApmMonitorAdapter;->jstageEnd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "0"

    invoke-static {p1, v4}, Lcom/alibaba/wireless/security/framework/ApmMonitorAdapter;->jstageStart(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/wireless/security/framework/e;->b(Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/wireless/security/framework/e$j;

    move-result-object v4

    const-string v5, "0"

    invoke-static {p1, v5}, Lcom/alibaba/wireless/security/framework/ApmMonitorAdapter;->jstageEnd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    if-eqz v4, :cond_218

    iget-object v6, v4, Lcom/alibaba/wireless/security/framework/e$j;->a:Ljava/io/File;

    if-eqz v6, :cond_218

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7a

    goto/16 :goto_218

    :cond_7a
    const-string p3, "getPluginFile"

    invoke-static {p1, v0, p3, v1, v2}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->printTimeCost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->get_currentTime()J

    move-result-wide v1

    const-string p3, "1"

    invoke-static {p1, p3}, Lcom/alibaba/wireless/security/framework/ApmMonitorAdapter;->jstageStart(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    invoke-direct {p0, p1, v4, p3, p2}, Lcom/alibaba/wireless/security/framework/e;->a(Ljava/lang/String;Lcom/alibaba/wireless/security/framework/e$j;Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/wireless/security/framework/d;

    move-result-object p3

    const-string v6, "1"

    invoke-static {p1, v6}, Lcom/alibaba/wireless/security/framework/ApmMonitorAdapter;->jstageEnd(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/alibaba/wireless/security/framework/e;->o:Z

    if-eqz v6, :cond_af

    iget-boolean v6, p0, Lcom/alibaba/wireless/security/framework/e;->m:Z

    if-eqz v6, :cond_af

    invoke-virtual {p0}, Lcom/alibaba/wireless/security/framework/e;->getMainPluginName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_af

    iget-object p2, p0, Lcom/alibaba/wireless/security/framework/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/wireless/security/framework/ISGPluginInfo;

    monitor-exit v3
    :try_end_ae
    .catchall {:try_start_3f .. :try_end_ae} :catchall_265

    return-object p1

    :cond_af
    if-nez p3, :cond_fd

    const v5, 0x186cc

    const/16 v6, 0x6e

    const-string v7, ""

    :try_start_b8
    iget-object p3, v4, Lcom/alibaba/wireless/security/framework/e$j;->c:Ljava/io/File;

    if-eqz p3, :cond_d4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "src:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/alibaba/wireless/security/framework/e$j;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_d0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e9

    :cond_d4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "zipfile:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/alibaba/wireless/security/framework/e$j;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d0

    :goto_e9
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    move-object v4, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v11}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/alibaba/wireless/security/open/SecException;

    const/16 p3, 0x6f

    invoke-direct {p2, p1, p3}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_fd
    const-string v4, "loadApk"

    invoke-static {p1, v0, v4, v1, v2}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->printTimeCost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/alibaba/wireless/security/framework/d;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "weakdependencies"

    invoke-virtual {p3, v1}, Lcom/alibaba/wireless/security/framework/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    const-string v4, "android_sg_load_opt"

    invoke-static {v2, v4}, Lcom/alibaba/wireless/security/framework/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13a

    const-string v2, "weakdependenciesNotDelay"

    invoke-virtual {p3, v2}, Lcom/alibaba/wireless/security/framework/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_13a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_141

    goto :goto_155

    :cond_141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "->"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_155
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " weakdependencies: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->w(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " weakdependenciesNotDelay: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->w(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-eqz p2, :cond_18f

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne p2, v2, :cond_1b1

    :cond_18f
    const-string p2, "looper of current thread is null, try to create a new thread with a looper"

    invoke-static {p2}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->w(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/alibaba/wireless/security/framework/e;->a:Landroid/os/HandlerThread;

    if-nez p2, :cond_1ab

    new-instance p2, Landroid/os/HandlerThread;

    const-string v2, "SGBackgroud"

    invoke-direct {p2, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/alibaba/wireless/security/framework/e;->a:Landroid/os/HandlerThread;

    const/16 v2, 0xa

    invoke-virtual {p2, v2}, Ljava/lang/Thread;->setPriority(I)V

    iget-object p2, p0, Lcom/alibaba/wireless/security/framework/e;->a:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_1ab
    iget-object p2, p0, Lcom/alibaba/wireless/security/framework/e;->a:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    :cond_1b1
    if-nez p2, :cond_1ba

    const-string p1, "looper is still null"

    invoke-static {p1}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->w(Ljava/lang/String;)V

    monitor-exit v3

    return-object p3

    :cond_1ba
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    if-eqz v5, :cond_1d3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_1d3

    new-instance p2, Lcom/alibaba/wireless/security/framework/e$b;

    invoke-direct {p2, p0, v5, v0}, Lcom/alibaba/wireless/security/framework/e$b;-><init>(Lcom/alibaba/wireless/security/framework/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1d3
    const-wide/32 v4, 0xea60

    if-eqz v1, :cond_1ea

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_1ea

    new-instance p2, Lcom/alibaba/wireless/security/framework/e$c;

    invoke-direct {p2, p0, v1, v0}, Lcom/alibaba/wireless/security/framework/e$c;-><init>(Lcom/alibaba/wireless/security/framework/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1ea
    new-instance p2, Lcom/alibaba/wireless/security/framework/e$d;

    invoke-direct {p2, p0}, Lcom/alibaba/wireless/security/framework/e$d;-><init>(Lcom/alibaba/wireless/security/framework/e;)V

    const-wide/16 v0, 0x2710

    invoke-virtual {v2, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p2, Lcom/alibaba/wireless/security/framework/e$e;

    invoke-direct {p2, p0}, Lcom/alibaba/wireless/security/framework/e$e;-><init>(Lcom/alibaba/wireless/security/framework/e;)V

    invoke-virtual {v2, p2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v3
    :try_end_1fd
    .catchall {:try_start_b8 .. :try_end_1fd} :catchall_265

    invoke-static {}, Lcom/alibaba/wireless/security/framework/SGApmMonitorManager;->getInstance()Lcom/alibaba/wireless/security/framework/SGApmMonitorManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alibaba/wireless/security/framework/SGApmMonitorManager;->monitorEnd(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/wireless/security/framework/SGApmMonitorManager;->getInstance()Lcom/alibaba/wireless/security/framework/SGApmMonitorManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/wireless/security/framework/SGApmMonitorManager;->isAllPluginLoaded()Z

    move-result p1

    if-eqz p1, :cond_217

    invoke-static {}, Lcom/alibaba/wireless/security/framework/SGApmMonitorManager;->getInstance()Lcom/alibaba/wireless/security/framework/SGApmMonitorManager;

    move-result-object p1

    const-string p2, "plugin"

    invoke-virtual {p1, p2}, Lcom/alibaba/wireless/security/framework/SGApmMonitorManager;->monitorEnd(Ljava/lang/String;)V

    :cond_217
    return-object p3

    :cond_218
    :goto_218
    if-eqz p3, :cond_263

    :try_start_21a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "plugin "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not existed"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_24a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", depended by "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_24a
    const v5, 0x186cc

    const/16 v6, 0x6e

    const-string v7, ""

    const-string v10, ""

    const-string v11, ""

    move-object v4, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v11}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 p2, 0x6e

    invoke-direct {p1, p3, p2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_263
    monitor-exit v3

    return-object v5

    :catchall_265
    move-exception p1

    monitor-exit v3
    :try_end_267
    .catchall {:try_start_21a .. :try_end_267} :catchall_265

    throw p1
.end method

.method private c(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 3
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->i:Ljava/lang/String;

    if-nez v0, :cond_e

    :try_start_4
    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_d

    goto :goto_e

    :catchall_d
    nop

    :cond_e
    :goto_e
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "libsg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".so"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_40

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    :goto_41
    return-object v0
.end method

.method private c()Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-nez v0, :cond_f

    return-object v1

    :cond_f
    const-string v1, "libsgsecuritybody"

    const-string v2, "libsgmiddletier"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    :goto_1d
    const/4 v4, 0x3

    if-ge v3, v4, :cond_48

    aget-object v4, v1, v3

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "so.version.so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-static {v5}, Lcom/alibaba/wireless/security/framework/utils/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_48
    return-object v2
.end method

.method private c(Ljava/io/File;)Z
    .registers 6

    .line 5
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/e;->s:Ljava/io/File;

    if-eqz v1, :cond_2f

    const/4 v1, 0x0

    :try_start_e
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_1f

    :try_start_16
    iget-object v2, p0, Lcom/alibaba/wireless/security/framework/e;->s:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1c} :catch_1d

    goto :goto_26

    :catch_1d
    move-exception v2

    goto :goto_21

    :catch_1f
    move-exception v2

    move-object p1, v1

    :goto_21
    const-string v3, ""

    invoke-static {v3, v2}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_26
    if-eqz p1, :cond_2f

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2f

    const/4 v0, 0x1

    :cond_2f
    return v0
.end method

.method private c(Ljava/io/File;Ljava/io/File;)Z
    .registers 13

    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_2c

    :catchall_d
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const v3, 0x186ce

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, ""

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_2c
    return p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 2
    if-eqz p1, :cond_da

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_da

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/alibaba/wireless/security/framework/e;->e(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_27

    const-string p1, "->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_20
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_27

    :catchall_27
    :cond_27
    const/16 p1, 0x5b

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exists:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canRead:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canWrite:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "totalSpace:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freeSpace:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_dc

    :cond_da
    const-string p1, ""

    :goto_dc
    return-object p1
.end method

.method private d(Ljava/io/File;)Z
    .registers 3

    .line 3
    if-nez p1, :cond_3

    goto :goto_23

    :cond_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_10

    goto :goto_23

    :cond_10
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/wireless/security/framework/utils/e;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "/system/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_23

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x1

    goto :goto_24

    :catchall_23
    :cond_23
    :goto_23
    const/4 p1, 0x0

    :goto_24
    return p1
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    .line 4
    move-object/from16 v9, p0

    move-object/from16 v6, p1

    move-object/from16 v10, p2

    move/from16 v1, p3

    const/4 v2, 0x1

    if-eqz v6, :cond_225

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_225

    :cond_17
    const-string v0, ";"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1f
    array-length v0, v3

    if-ge v5, v0, :cond_225

    aget-object v0, v3, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_30

    goto/16 :goto_1ec

    :cond_30
    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v11, 0x2

    const-string v12, ""

    if-ne v8, v11, :cond_1f0

    aget-object v0, v7, v4

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v8, ", depended by: "

    const-string v13, " is not meet the requirement: "

    const-string v14, " of "

    const-string v15, "version "

    if-ltz v0, :cond_115

    const-string v11, "("

    invoke-virtual {v10, v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    const-string v4, ")"

    invoke-virtual {v10, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v11, :cond_d0

    if-ltz v0, :cond_d0

    if-gt v11, v0, :cond_d0

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aget-object v4, v7, v2

    invoke-direct {v9, v0, v4}, Lcom/alibaba/wireless/security/framework/e;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1eb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v6, v7, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_a4
    move-object v10, v3

    if-nez v1, :cond_c8

    const/4 v1, 0x0

    aget-object v6, v7, v1

    aget-object v7, v7, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const v2, 0x186c8

    const/16 v3, 0x71

    const-string v4, "versionCompare(parentPluginVersion, nameVersionPair[1]) < 0"

    move-object/from16 v1, p0

    move-object v5, v0

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c8
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x71

    invoke-direct {v0, v10, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_d0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const v2, 0x186c8

    const/16 v3, 0x81

    const-string v4, "indexLeftP < 0 || indexRightP < 0 || indexLeftP > indexRightP"

    const-string v7, ""

    move-object/from16 v1, p0

    move-object v5, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0

    :cond_115
    iget-object v0, v9, Lcom/alibaba/wireless/security/framework/e;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x0

    aget-object v11, v7, v4

    invoke-virtual {v0, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/alibaba/wireless/security/framework/ISGPluginInfo;

    if-nez v11, :cond_172

    :try_start_123
    aget-object v0, v7, v4

    xor-int/lit8 v4, v1, 0x1

    invoke-direct {v9, v0, v10, v4}, Lcom/alibaba/wireless/security/framework/e;->c(Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/wireless/security/framework/ISGPluginInfo;

    move-result-object v11
    :try_end_12b
    .catchall {:try_start_123 .. :try_end_12b} :catchall_12d

    const/4 v0, 0x0

    goto :goto_12e

    :catchall_12d
    move-exception v0

    :goto_12e
    if-nez v11, :cond_172

    if-eqz v1, :cond_134

    goto/16 :goto_1eb

    :cond_134
    instance-of v1, v0, Lcom/alibaba/wireless/security/open/SecException;

    if-eqz v1, :cond_13b

    check-cast v0, Lcom/alibaba/wireless/security/open/SecException;

    throw v0

    :cond_13b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const v2, 0x186c8

    const/16 v3, 0x82

    const-string v4, "throwable in loadPluginInner"

    move-object/from16 v1, p0

    move-object v5, v0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x82

    invoke-direct {v0, v10, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_172
    invoke-interface {v11}, Lcom/alibaba/wireless/security/framework/ISGPluginInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    aget-object v4, v7, v2

    invoke-direct {v9, v0, v4}, Lcom/alibaba/wireless/security/framework/e;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1eb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Lcom/alibaba/wireless/security/framework/ISGPluginInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v4, v7, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v7, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1ba

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1ba
    if-nez v1, :cond_1e3

    invoke-interface {v11}, Lcom/alibaba/wireless/security/framework/ISGPluginInfo;->getVersion()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    aget-object v8, v7, v4

    aget-object v7, v7, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const v2, 0x186c8

    const/16 v3, 0x71

    const-string v4, "versionCompare(dependPlugin.getVersion(), nameVersionPair[1]) < 0"

    move-object/from16 v1, p0

    move-object v5, v6

    move-object v6, v8

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e3
    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v2, 0x71

    invoke-direct {v1, v0, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_1eb
    :goto_1eb
    const/4 v4, 0x0

    :goto_1ec
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1f

    :cond_1f0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const v2, 0x186c8

    const/16 v3, 0x80

    const-string v4, "nameVersionPair.length != 2"

    move-object/from16 v1, p0

    move-object v5, v0

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0

    :cond_225
    :goto_225
    return v2
.end method

.method private e(Ljava/io/File;)Z
    .registers 12

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_4e

    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v1, :cond_22

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_30

    :cond_22
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_32

    if-nez p1, :cond_4e

    :goto_30
    const/4 p1, 0x1

    goto :goto_4f

    :catchall_32
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const v3, 0x186cf

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    const/4 p1, 0x0

    :goto_4f
    return p1
.end method

.method private f()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/alibaba/wireless/security/framework/e;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->q:Ljava/io/File;

    if-eqz v0, :cond_3b

    new-instance v0, Lcom/alibaba/wireless/security/framework/utils/b;

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/wireless/security/framework/e;->q:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "lock.lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/framework/utils/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->g:Lcom/alibaba/wireless/security/framework/utils/b;

    invoke-direct {p0}, Lcom/alibaba/wireless/security/framework/e;->b()Lcom/alibaba/wireless/security/framework/c;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->k:Lcom/alibaba/wireless/security/framework/c;

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/e;->k:Lcom/alibaba/wireless/security/framework/c;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/wireless/security/framework/e;->a(Landroid/content/Context;Lcom/alibaba/wireless/security/framework/c;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->s:Ljava/io/File;

    :cond_3b
    return-void
.end method

.method private g()Z
    .registers 4

    sget-object v0, Lcom/alibaba/wireless/security/framework/e;->t:Ljava/lang/Boolean;

    if-nez v0, :cond_2e

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/alibaba/wireless/security/framework/e;->e()Ljava/io/File;

    move-result-object v1

    const-string v2, ".sgdynkp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alibaba/wireless/security/framework/e;->t:Ljava/lang/Boolean;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/alibaba/wireless/security/framework/e;->e()Ljava/io/File;

    move-result-object v1

    const-string v2, ".sgcpuv"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alibaba/wireless/security/framework/e;->u:Ljava/lang/Boolean;

    :cond_2e
    sget-object v0, Lcom/alibaba/wireless/security/framework/e;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->b:Ljava/util/List;

    if-eqz v0, :cond_1d

    :try_start_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_18

    goto :goto_8

    :catch_18
    :cond_18
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1d
    return-void
.end method

.method private i()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/e;->q:Ljava/io/File;

    if-eqz v1, :cond_83

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_83

    :try_start_15
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1f
    if-eqz v1, :cond_7d

    array-length v3, v1

    if-ge v2, v3, :cond_7d

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "libsg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4a

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".so"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7a

    :cond_4a
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v3}, Lcom/alibaba/wireless/security/framework/e;->e(Ljava/io/File;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ") , "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_7d
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_82
    .catchall {:try_start_15 .. :try_end_82} :catchall_88

    goto :goto_88

    :cond_83
    const-string v1, "not exists!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :catchall_88
    :goto_88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->k:Lcom/alibaba/wireless/security/framework/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->k:Lcom/alibaba/wireless/security/framework/c;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/c;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2c

    :cond_20
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->k:Lcom/alibaba/wireless/security/framework/c;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/wireless/security/framework/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_2b
    move-object v0, v1

    :cond_2c
    :goto_2c
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_38

    :cond_34
    invoke-direct {p0, p1}, Lcom/alibaba/wireless/security/framework/e;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    :cond_38
    if-eqz v0, :cond_b0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b0

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/framework/e;->getPluginInfo(Ljava/lang/String;)Lcom/alibaba/wireless/security/framework/ISGPluginInfo;

    move-result-object v2

    if-nez v2, :cond_5e

    iget-boolean p1, p0, Lcom/alibaba/wireless/security/framework/e;->m:Z

    if-eqz p1, :cond_5d

    invoke-virtual {p0}, Lcom/alibaba/wireless/security/framework/e;->getMainPluginName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_55

    goto :goto_5d

    :cond_55
    new-instance p1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v0, 0x6e

    invoke-direct {p1, v0}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw p1

    :cond_5d
    :goto_5d
    return-object v1

    :cond_5e
    invoke-interface {v2}, Lcom/alibaba/wireless/security/framework/ISGPluginInfo;->getSGPluginEntry()Lcom/alibaba/wireless/security/open/initialize/ISecurityGuardPlugin;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/alibaba/wireless/security/open/initialize/ISecurityGuardPlugin;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_72

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_72
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/alibaba/wireless/security/framework/ISGPluginInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lcom/alibaba/wireless/security/framework/ISGPluginInfo;->getPluginPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/wireless/security/framework/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v1, 0x186cd

    const/16 v2, 0x70

    const-string v3, ""

    const-string v7, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/wireless/security/framework/e;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v0, 0x70

    invoke-direct {p1, v0}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw p1

    :cond_b0
    new-instance p1, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v0, 0x96

    invoke-direct {p1, v0}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw p1
.end method

.method public varargs a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Object;)V
    .registers 6

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    if-eqz p5, :cond_a

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_a
    iput-object p1, p0, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/wireless/security/framework/e;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/wireless/security/framework/utils/e;->b(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/wireless/security/framework/e;->l:Z

    iput-boolean p4, p0, Lcom/alibaba/wireless/security/framework/e;->h:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/wireless/security/framework/e;->b:Ljava/util/List;

    iget-object p1, p0, Lcom/alibaba/wireless/security/framework/e;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->init(Landroid/content/Context;)V

    if-eqz p3, :cond_2c

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2c

    iput-object p3, p0, Lcom/alibaba/wireless/security/framework/e;->i:Ljava/lang/String;

    :cond_2c
    :try_start_2c
    invoke-direct {p0}, Lcom/alibaba/wireless/security/framework/e;->f()V
    :try_end_2f
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_2c .. :try_end_2f} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_2f

    :catch_2f
    iget-boolean p1, p0, Lcom/alibaba/wireless/security/framework/e;->o:Z

    iput-boolean p1, p0, Lcom/alibaba/wireless/security/framework/e;->p:Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .line 19
    invoke-direct {p0}, Lcom/alibaba/wireless/security/framework/e;->g()Z

    move-result v0

    if-eqz v0, :cond_4c

    if-eqz p1, :cond_4c

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/alibaba/wireless/security/framework/e;->e()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upds/libs/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_42

    new-instance p1, Ljava/io/File;

    const-string v1, "FBD"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "1"

    invoke-static {p1, v0}, Lcom/alibaba/wireless/security/framework/utils/a;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->b:Ljava/util/List;

    new-instance v1, Lcom/alibaba/wireless/security/framework/e$h;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/wireless/security/framework/e$h;-><init>(Lcom/alibaba/wireless/security/framework/e;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_42
    iget-object p1, p0, Lcom/alibaba/wireless/security/framework/e;->b:Ljava/util/List;

    new-instance v1, Lcom/alibaba/wireless/security/framework/e$i;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/wireless/security/framework/e$i;-><init>(Lcom/alibaba/wireless/security/framework/e;Ljava/io/File;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4c
    :goto_4c
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 20
    if-eqz p1, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/wireless/security/framework/e;->o:Z

    goto :goto_c

    :cond_6
    iget-boolean p1, p0, Lcom/alibaba/wireless/security/framework/e;->p:Z

    iput-boolean p1, p0, Lcom/alibaba/wireless/security/framework/e;->o:Z

    iget-boolean p1, p0, Lcom/alibaba/wireless/security/framework/e;->n:Z

    :goto_c
    iput-boolean p1, p0, Lcom/alibaba/wireless/security/framework/e;->m:Z

    return-void
.end method

.method public d()Ljava/io/File;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->q:Ljava/io/File;

    return-object v0
.end method

.method public e()Ljava/io/File;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->r:Ljava/io/File;

    return-object v0
.end method

.method public getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/alibaba/wireless/security/framework/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMainPluginName()Ljava/lang/String;
    .registers 2

    const-string v0, "main"

    return-object v0
.end method

.method public getPluginInfo(Ljava/lang/String;)Lcom/alibaba/wireless/security/framework/ISGPluginInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MockTaobaoChannel - getPluginInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/wireless/security/framework/utils/FLOG;->i(Ljava/lang/String;)V

    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/wireless/security/framework/e;->c(Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/wireless/security/framework/ISGPluginInfo;

    move-result-object p1

    return-object p1
.end method

.method public getRouter()Lcom/alibaba/wireless/security/framework/IRouterComponent;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/e;->f:Lcom/alibaba/wireless/security/framework/IRouterComponent;

    return-object v0
.end method
