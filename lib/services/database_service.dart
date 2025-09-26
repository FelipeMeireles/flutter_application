import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../models/location.dart';
import '../models/user.dart';
import '../models/trap.dart';
import '../models/observation.dart';

class DatabaseService {
  static late Isar _isar;
  
  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    
    _isar = await Isar.open(
      [
        LocationSchema,
        UserSchema,
        TrapSchema,
        ObservationSchema,
      ],
      directory: dir.path,
    );
  }
  
  static Isar get instance => _isar;
  
  // Métodos para Location
  static Future<void> saveLocation(Location location) async {
    await _isar.writeTxn(() async {
      await _isar.locations.put(location);
    });
  }
  
  static Future<List<Location>> getAllLocations() async {
    return await _isar.locations.where().findAll();
  }
  
  // Métodos para User
  static Future<void> saveUser(User user) async {
    await _isar.writeTxn(() async {
      await _isar.users.put(user);
    });
  }
  
  static Future<User?> getCurrentUser() async {
    return await _isar.users.where().findFirst();
  }
  
  // Métodos para Trap
  static Future<void> saveTrap(Trap trap) async {
    await _isar.writeTxn(() async {
      await _isar.traps.put(trap);
    });
  }
  
  static Future<List<Trap>> getAllTraps() async {
    return await _isar.traps.where().findAll();
  }
  
  static Future<Trap?> getTrapById(String trapId) async {
    return await _isar.traps.filter().trapIdEqualTo(trapId).findFirst();
  }
  
  // Métodos para Observation
  static Future<void> saveObservation(Observation observation) async {
    await _isar.writeTxn(() async {
      await _isar.observations.put(observation);
    });
  }
  
  static Future<List<Observation>> getObservationsByTrap(String trapId) async {
    return await _isar.observations.filter().trapIdEqualTo(trapId).findAll();
  }
  
  static Future<List<Observation>> getAllObservations() async {
    return await _isar.observations.where().findAll();
  }
  
  // Métodos para sincronização
  static Future<List<Trap>> getTrapsNeedingSync() async {
    return await _isar.traps.filter().needsSyncEqualTo(true).findAll();
  }
  
  static Future<List<Observation>> getObservationsNeedingSync() async {
    return await _isar.observations.filter().needsSyncEqualTo(true).findAll();
  }
}
